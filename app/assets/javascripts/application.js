// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, api/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
$(document).ready(function() {

  
$(function() {
    $('#slides').slidesjs({
        width: 1540,
        height: 500,
        play: {
            interval: 4000,
            // [number] Time spent on each slide in milliseconds.
            auto: true,
            // [boolean] Start playing the slideshow on load.
            pauseOnHover: true
            // [boolean] pause a playing slideshow on hover
        },
        pagination: {
            active: false
        }
    });
});

$(".story-gallery > img").click(function(){
	if ($(".overlay").length == 0){
		$("body").addClass("active").prepend('<div class="overlay">overlay</div>');;
		$(this).addClass("selected");
	}
	else if ($(".overlay").length > 0){
		$("body").removeClass("active");
		$(".overlay").remove();
		$(this).removeClass("selected");
	}
  $(".overlay").click(function(){
    $(this).remove();
    $("body").removeClass("active");
    $(".story-gallery > img").removeClass("selected");
  });
});


});