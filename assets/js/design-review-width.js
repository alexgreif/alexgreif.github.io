// Optional width comparison, propagated when browsing review pages.
if (new URLSearchParams(location.search).get('sidebar') === '25') {
 document.body.classList.add('review-narrow');
 document.querySelectorAll('a[href]').forEach(link => {
  const url = new URL(link.href, location.href);
  if (url.origin === location.origin && /\/review-(row|subtle)-[^/]+\.html$/.test(url.pathname)) {
   url.searchParams.set('sidebar', '25');
   link.href = url.href;
  }
 });
}
