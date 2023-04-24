$('.imgRecente').slick({
    slidesToShow: 4,
    slidesToScroll: 1,
    autoplay: true,
    autoplaySpeed: 2000,
    dots: true,
  });
      

$('.imgDepoimento').slick({
    slidesToShow: 1,
    slidesToScroll: 1,
    autoplay: true,
    autoplaySpeed: 8000,
  });

  document.querySelector(".abrir-menu").onclick = function () {
    document.documentElement.classList.add ("menu-ativo");
};    

document.querySelector(".fechar-menu").onclick = function () {
  document.documentElement.classList.remove ("menu-ativo");
};    