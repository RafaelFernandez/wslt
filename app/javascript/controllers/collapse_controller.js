import { Controller } from "stimulus"

export default class extends Controller {

  static targets = ['arrow'];

  toggleCard(event) {
    event.currentTarget.classList.toggle("active")
    this.arrowTarget.classList.toggle("collapsed");
    const content = event.currentTarget.nextElementSibling;
    if (content.style.display === "block") {
      content.style.display = "none";
    } else {
      content.style.display = "block";
    };
  }

};
