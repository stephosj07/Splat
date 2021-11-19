import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  if (document.getElementById('banner-typed-text')) {
    new Typed('#banner-typed-text', {
      strings: ["Find your overnight camping spot!", "Anywhere in the world"],
      typeSpeed: 60,
      loop: true
    });
  }
}

export { loadDynamicBannerText };
