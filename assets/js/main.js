(function ($) {
    "use strict";
    
    // Dropdown on mouse hover
    $(document).ready(function () {
        function toggleNavbarMethod() {
            if ($(window).width() > 992) {
                $('.navbar .dropdown').on('mouseover', function () {
                    $('.dropdown-toggle', this).trigger('click');
                }).on('mouseout', function () {
                    $('.dropdown-toggle', this).trigger('click').blur();
                });
            } else {
                $('.navbar .dropdown').off('mouseover').off('mouseout');
            }
        }
        toggleNavbarMethod();
        $(window).resize(toggleNavbarMethod);
    });
    
    
    // Back to top button
    $(window).scroll(function () {
        if ($(this).scrollTop() > 100) {
            $('.back-to-top').fadeIn('slow');
        } else {
            $('.back-to-top').fadeOut('slow');
        }
    });
    $('.back-to-top').click(function () {
        $('html, body').animate({scrollTop: 0}, 1500, 'easeInOutExpo');
        return false;
    });


    // Vendor carousel
    $('.vendor-carousel').owlCarousel({
        loop: true,
        margin: 29,
        nav: false,
        autoplay: true,
        smartSpeed: 1000,
        responsive: {
            0:{
                items:2
            },
            576:{
                items:3
            },
            768:{
                items:4
            },
            992:{
                items:5
            },
            1200:{
                items:6
            }
        }
    });


    // Related carousel
    $('.related-carousel').owlCarousel({
        loop: true,
        margin: 29,
        nav: false,
        autoplay: true,
        smartSpeed: 1000,
        responsive: {
            0:{
                items:1
            },
            576:{
                items:2
            },
            768:{
                items:3
            },
            992:{
                items:4
            }
        }
    });


    // Product Quantity
    $('.quantity button').on('click', function () {
        var button = $(this);
        var oldValue = button.parent().parent().find('input').val();
        if (button.hasClass('btn-plus')) {
            var newVal = parseFloat(oldValue) + 1;
        } else {
            if (oldValue > 0) {
                var newVal = parseFloat(oldValue) - 1;
            } else {
                newVal = 0;
            }
        }
        button.parent().parent().find('input').val(newVal);
    });
    
})(jQuery);

      var c1 = document.getElementById(1);
      var c2 = document.getElementById(2);
      var c3 = document.getElementById(3);
      var c4 = document.getElementById(4);
      var c5 = document.getElementById(5);
      var c6 = document.getElementById(6);
      var c7 = document.getElementById(7);
      var c8 = document.getElementById(8);

      c1.onclick = function () {
        document.getElementById("change-title-0").innerHTML =
          "Thực phẩm sức khỏe và làm đẹp";
        document.getElementById("change-title-1").innerHTML =
          "Thực phẩm sức khỏe và làm đẹp";
      };
      c2.onclick = function () { 
        document.getElementById("change-title-0").innerHTML =
          "Dụng cụ hỗ trợ làm đẹp";
        document.getElementById("change-title-1").innerHTML =
          "Dụng cụ hỗ trợ làm đẹp";
        
       
      };
      c3.onclick = function () {
        document.getElementById("change-title-0").innerHTML =
          "Thực phẩm giảm cân";
        document.getElementById("change-title-1").innerHTML =
          "Thực phẩm giảm cân";
       
      };
      c4.onclick = function () {
        document.getElementById("change-title-0").innerHTML = "Mỹ phẩm làm đẹp";
        document.getElementById("change-title-1").innerHTML = "Mỹ phẩm làm đẹp";
       
      };
      c5.onclick = function () {
        document.getElementById("change-title-0").innerHTML = "Kem chống nắng";
        document.getElementById("change-title-1").innerHTML = "Kem chống nắng";
       
      };
      c6.onclick = function () {
        document.getElementById("change-title-0").innerHTML = "Chăm sóc tóc";
        document.getElementById("change-title-1").innerHTML = "Chăm sóc tóc";
      };
      c7.onclick = function () {
        document.getElementById("change-title-0").innerHTML = "Chăm sóc da";
        document.getElementById("change-title-1").innerHTML = "Chăm sóc da";
      };
      c8.onclick = function () {
        document.getElementById("change-title-0").innerHTML = "Khuyến Mãi";
        document.getElementById("change-title-1").innerHTML = "Khuyến Mãi";
      };