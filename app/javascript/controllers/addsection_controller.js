import { Controller } from "stimulus"

export default class extends Controller {

  static targets = ['card_hero', 'card_bio', 'card_catchy', 'card_pricing']

  addHero(event) {
    event.preventDefault();
    this.card_heroTarget.classList.remove('is-hidden')
  }
  addBio(event) {
    event.preventDefault();
    this.card_bioTarget.classList.remove('is-hidden')
  }
  addCatchy(event) {
    event.preventDefault();
    this.card_catchyTarget.classList.remove('is-hidden')
  }
  addPricing(event) {
    event.preventDefault();
    this.card_pricingTarget.classList.remove('is-hidden')
  }

}