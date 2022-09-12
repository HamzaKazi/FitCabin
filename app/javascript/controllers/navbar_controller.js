import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    // const handleNavScroll = () => {
    //   if (isScrollingDown() && !nav.contains(document.activeElement)) {
    //     nav.classList.add('scroll-down');
    //     nav.classList.remove('scroll-up')
    //   } else {
    //     nav.classList.add('scroll-up');
    //     nav.classList.remove('scroll-down')
    //   }
    // }



// const mediaQuery = window.matchMedia("(prefers-reduced-motion: reduce)");

// window.addEventListener("scroll", () => {
//   if (mediaQuery && !mediaQuery.matches) {
//     throttle(handleNavScroll, 250)
//   }
// });

  }

}
