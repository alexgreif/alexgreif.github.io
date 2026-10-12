"""Check the selected static portfolio's local references and navigation."""
from html.parser import HTMLParser
from pathlib import Path
from urllib.parse import unquote, urlsplit
import xml.etree.ElementTree as ET

ROOT = Path(__file__).resolve().parents[1]
PROJECTS = ['thesis', 'study-satisfaction', 'anguilla-search', 'survival-analysis', 'brownian-motion', 'cyclistic']
PAGES = ['index', *PROJECTS]

class Page(HTMLParser):
    def __init__(self, content):
        super().__init__()
        self.ids, self.refs, self.links = set(), [], []
        self.feed(content)

    def handle_starttag(self, tag, attributes):
        attrs = dict(attributes)
        if 'id' in attrs:
            assert attrs['id'] not in self.ids, f'Duplicate id: {attrs["id"]}'
            self.ids.add(attrs['id'])
        for key in ('href', 'src'):
            if attrs.get(key):
                self.refs.append(attrs[key])
        if tag == 'a':
            self.links.append(attrs)

pages = {name: Page((ROOT / f'{name}.html').read_text()) for name in PAGES}
count = 0
for name, page in pages.items():
    for ref in page.refs:
        url = urlsplit(ref)
        if url.scheme or url.netloc:
            continue
        target = ROOT / unquote(url.path or f'{name}.html')
        assert target.is_file(), f'{name}: missing local target {ref}'
        assert not target.name.startswith(('review-', 'preview-')), f'{name}: experiment link {ref}'
        if url.fragment and target.suffix == '.html':
            target_page = pages.get(target.stem) or Page(target.read_text())
            assert url.fragment in target_page.ids, f'{name}: missing fragment {ref}'
        count += 1
    for link in page.links:
        href = link.get('href', '')
        path = urlsplit(href).path
        if href.startswith(('https://', 'http://')):
            assert link.get('target') == '_blank' and 'noopener' in link.get('rel', ''), f'{name}: external link behavior {href}'
        elif path.endswith('.html') and path.rsplit('/', 1)[-1].removesuffix('.html') in PAGES:
            assert 'target' not in link, f'{name}: internal link opens new tab {href}'
        if path.lower().endswith(('.r', '.xlsx', '.pptx')):
            assert 'download' in link, f'{name}: missing download attribute {href}'
        if path.lower().endswith('.pdf') and 'download' not in link:
            assert link.get('target') == '_blank', f'{name}: document replaces page {href}'
    for svg in {ROOT / urlsplit(ref).path for ref in page.refs if ref.endswith('.svg') and not urlsplit(ref).scheme and not urlsplit(ref).netloc}:
        ET.parse(svg)

for i, name in enumerate(PROJECTS):
    directions = {link.get('rel'): link.get('href') for link in pages[name].links if link.get('rel') in ('prev', 'next')}
    expected = {}
    if i:
        expected['prev'] = PROJECTS[i - 1] + '.html'
    if i + 1 < len(PROJECTS):
        expected['next'] = PROJECTS[i + 1] + '.html'
    assert directions == expected, f'{name}: navigation {directions}, expected {expected}'
    assert any(link.get('href') == 'index.html' for link in pages[name].links), f'{name}: missing overview return'

print(f'OK: {len(pages)} pages, {count} local references, project sequence, link behavior and SVG assets.')
