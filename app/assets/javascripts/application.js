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
$('body').on('click', function(){
    alert('Вы нажали на элемент "foo"');
});


$(document).ready(function() {
    $(".fancybox").fancybox({
        openEffect	: 'none',
        closeEffect	: 'none'
    });
});
//Фиксирование меню-табов (Описание, Фото, Видео,
//TODO Переписать на универсальный модуль

$(window).scroll(function(event){
    var st = $(this).scrollTop();
    if (st >= 550){
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
});

