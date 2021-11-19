import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  console.log("hello world")
  new Typed('#banner-typed-text', {
    strings: ["Find your overnight camping spot!", "Anywhere in the world"],
    typeSpeed: 60,
    loop: true
  });
}

export { loadDynamicBannerText };
