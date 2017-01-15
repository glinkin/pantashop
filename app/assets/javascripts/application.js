// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets
//= require fancybox
//= require jquery_ujs
//= require turbolinks
//= require_tree .


$(document).ready(function() {
    $(".fancybox").fancybox({
        openEffect	: 'none',
        closeEffect	: 'none'
    });

         $(window).scroll(function (event) {
             if($(window).width() > 799 ) {
                 var st = $(this).scrollTop();
                 if (st >= 550) {
                     $(".main-screen").css("top", "-550px");
                     $(".main-screen").css("position", "fixed");
                     $(".main-screen").css("box-shadow", "0px 2px 4px 0px rgba(0, 0, 0, 0.5)");
                     $(".tab-content").css("margin-top", "650px");

                 } else {
                     $(".tab-content").css("margin-top", "0px");
                     $(".main-screen").css("top", "0px");
                     $(".main-screen").css("position", "relative");
                     $(".main-screen").css("box-shadow", "none");
                 }
             }
             var FadeElement = inWindow('.vscroll');
             console.log(FadeElement.html());
             FadeElement.show();
             FadeElement.addClass('animated fadeIn');
         });

    $(document).on('click',".nav-tabs li",function(){
        var st = $(window).scrollTop();
        if (st >= 550){
            $(window).scrollTop(549);
            console.log('ok');
        }
    });
    $(document).on('click',".minus",function(){
        if($('.count').val()>1){
            $('.count').val($('.count').val()-1);
        }

        console.log('minus');
    });
    $(document).on('click',".plus",function(){
        var count = parseInt($('.count').val())+1;
        $('.count').val(count);
        console.log('plus');
    });

    function inWindow(s){
        var scrollTop = $(window).scrollTop();
        var windowHeight = $(window).height();
        var currentEls = $(s);
        var result = [];
        currentEls.each(function(){
            var el = $(this);
            var offset = el.offset();
            if(scrollTop <= offset.top && (50 + offset.top) < (scrollTop + windowHeight))
                result.push(this);
        });
        return $(result);
    }

});
//Фиксирование меню-табов (Описание, Фото, Видео,
//TODO Переписать на универсальный модуль


