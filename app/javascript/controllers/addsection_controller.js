import { Controller } from "stimulus"

export default class extends Controller {

  static targets = ['card_hero', 'card_bio', 'card_catchy', 'card_pricing', 'card_contact', 'section']

  addSection(event) {
    event.preventDefault();
  
    const name = event.currentTarget.dataset.name
    this[`card_${name}Target`].classList.remove('is-hidden')
    $('#exampleModal').modal('hide')
  }
 }
