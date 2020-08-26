const initNavbar = () => {
  window.addEventListener("scroll", (event) => {
    const navbar = document.querySelector('#navbar');
    if (window.scrollY < 400) {
      navbar.classList.add("top");
    } else {
        navbar.classList.remove("top");
    }
  });
}

export { initNavbar };


