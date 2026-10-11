// Optional layout comparisons, propagated when browsing review pages.
const reviewOptions = new URLSearchParams(location.search);
if (reviewOptions.get('sidebar') === '25') document.body.classList.add('review-narrow');
if (reviewOptions.get('text') === '80') document.body.classList.add('review-wider-text');
document.querySelectorAll('a[href]').forEach(link => {
 const url = new URL(link.href, location.href);
 if (url.origin === location.origin && /\/review-(row|subtle|photos)-[^/]+\.html$/.test(url.pathname)) {
  for (const [key, value] of [['sidebar', '25'], ['text', '80']]) {
   if (reviewOptions.get(key) === value) url.searchParams.set(key, value);
  }
  link.href = url.href;
 }
});
