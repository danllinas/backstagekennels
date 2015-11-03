var ready;
ready = function() {
  var navbar = $('nav');
  var origOffsetY = $('.header-image').height();

  function scroll() {
      if ($(window).scrollTop() >= origOffsetY) {
          $('nav').addClass('navbar-fixed-top');
          $('.content').addClass('menu-padding');
      } else {
          $('nav').removeClass('navbar-fixed-top');
          $('.content').removeClass('menu-padding');
      }


  }
  document.onscroll = scroll;
};

$(document).ready(ready);
$(document).on('page:load', ready);
