// Optional layout comparisons, propagated when browsing review pages.
const reviewOptions = new URLSearchParams(location.search);
const sidebarWidth = reviewOptions.get('sidebar');
if (['25', '28', '30'].includes(sidebarWidth)) {
 document.body.classList.add('review-sidebar-sized');
 document.body.style.setProperty('--review-sidebar-width', `${sidebarWidth}%`);
}
if (reviewOptions.get('text') === '80') document.body.classList.add('review-wider-text');
document.querySelectorAll('a[href]').forEach(link => {
 const url = new URL(link.href, location.href);
 if (url.origin === location.origin && /\/review-(row|subtle|photos)-[^/]+\.html$/.test(url.pathname)) {
  if (['25', '28', '30'].includes(sidebarWidth)) url.searchParams.set('sidebar', sidebarWidth);
  if (reviewOptions.get('text') === '80') url.searchParams.set('text', '80');
  link.href = url.href;
 }
});
