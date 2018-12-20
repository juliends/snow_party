import Typed from 'typed.js';

function loadDynamicBannerText() {
  document.addEventListener('DOMContentLoaded', ()=> {
    if (document.getElementById('banner-typed-text')) {
      new Typed('#banner-typed-text', {
        strings: ["dans la salle de cinéma", "en avant-première"],
        typeSpeed: 50,
        loop: true
      });
    }
  })
}

export { loadDynamicBannerText };
