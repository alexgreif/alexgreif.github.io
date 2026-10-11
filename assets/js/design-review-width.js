// Optional layout comparisons, propagated when browsing review pages.
const reviewOptions = new URLSearchParams(location.search);
const sidebarWidth = reviewOptions.get('sidebar');
const studyPreview = reviewOptions.get('article');
const studyPreviews = {
 title: ['study-satisfaction-title.svg', 'Title and authors of the co-authored journal article on study satisfaction'],
 anova: ['study-satisfaction-anova.svg', 'Detail of the factorial ANOVA results table'],
 comparisons: ['study-satisfaction-comparisons.svg', 'Detail of the estimated marginal means comparison table']
};
const hybridStudyImage = document.querySelector('[data-hybrid-study]');
if (hybridStudyImage && reviewOptions.get('visual') === 'table') {
 hybridStudyImage.src = 'images/thumbs/study-satisfaction-comparisons.svg';
 document.body.classList.remove('review-hybrid-sport');
}
const studyImage = document.querySelector('[data-study-preview]');
if (studyImage && Object.hasOwn(studyPreviews, studyPreview)) {
 studyImage.src = `images/thumbs/${studyPreviews[studyPreview][0]}`;
 studyImage.alt = studyPreviews[studyPreview][1];
}
if (['25', '28', '30'].includes(sidebarWidth)) {
 document.body.classList.add('review-sidebar-sized');
 document.body.style.setProperty('--review-sidebar-width', `${sidebarWidth}%`);
}
const textWidth = reviewOptions.get('text');
if (['70', '80', '96', 'full'].includes(textWidth)) {
 document.body.classList.add('review-text-width');
 document.body.style.setProperty('--review-text-width', textWidth === 'full' ? 'none' : `${textWidth}ch`);
}
if (reviewOptions.get('align') === 'center') document.body.classList.add('review-centered-content');
document.querySelectorAll('a[href]').forEach(link => {
 const url = new URL(link.href, location.href);
 if (url.origin === location.origin && /\/review-(row|subtle|photos|hybrid|rectangle)-[^/]+\.html$/.test(url.pathname)) {
  if (['25', '28', '30'].includes(sidebarWidth)) url.searchParams.set('sidebar', sidebarWidth);
  if (['70', '80', '96', 'full'].includes(textWidth)) url.searchParams.set('text', textWidth);
  if (['sport', 'table'].includes(reviewOptions.get('visual'))) url.searchParams.set('visual', reviewOptions.get('visual'));
  if (reviewOptions.get('align') === 'center') url.searchParams.set('align', 'center');
  if (Object.hasOwn(studyPreviews, studyPreview)) url.searchParams.set('article', studyPreview);
  link.href = url.href;
 }
});
