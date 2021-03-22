import { Controller } from "stimulus"

export default class extends Controller {

  scrolling(event){
    // const input = event.target
    
    $(window).on("scroll", function() {
      if ($(window).scrollTop()) {
        $('nav').addClass('black');
      }
    else {
        $('nav').removeClass('black');
      }
    });


    
  }
}