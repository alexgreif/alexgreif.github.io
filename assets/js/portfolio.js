/* Footer placement follows the existing 980px sidebar/header breakpoint. */
(() => {
 'use strict';
 const header = document.getElementById('header');
 const main = document.getElementById('main');
 const footer = document.getElementById('footer');
 const narrow = window.matchMedia('(max-width: 980px)');
 function placeFooter() {
  if (narrow.matches) main.after(footer);
  else header.append(footer);
 }
 placeFooter();
 narrow.addEventListener('change', placeFooter);
 document.body.classList.toggle('is-touch', window.matchMedia('(pointer: coarse)').matches);
 requestAnimationFrame(() => document.body.classList.remove('is-preload'));
})();
