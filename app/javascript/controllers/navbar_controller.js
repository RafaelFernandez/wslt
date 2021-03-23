import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ['menu']

  connect() {
    window.addEventListener("scroll", this.onScroll); 
    window.addEventListener("turbolinks:render", this.onScroll);
  }

  onScroll = (event) => {
    if (window.scrollY) {
      this.menuTarget.classList.add("dark")
      console.log('yes dark');
      
    } else {
      this.menuTarget.classList.remove("dark")
      console.log('no dark');
      
    }
  }
}