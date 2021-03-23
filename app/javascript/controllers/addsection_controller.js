import { Controller } from "stimulus"

export default class extends Controller {

  static targets = ['card_hero', 'card_bio', 'card_catchy', 'card_pricing', 'card_calendar', 'card_contact']

  addHero(event) {
    event.preventDefault();
    this.card_heroTarget.classList.remove('is-hidden')
    document.getElementById("preview_hero").classList.remove('is-hidden') // sorry andrea
  }
  addBio(event) {
    event.preventDefault();
    this.card_bioTarget.classList.remove('is-hidden')
    document.getElementById("preview_bio").classList.remove('is-hidden') // sorry andrea
  }
  addCatchy(event) {
    event.preventDefault();
    this.card_catchyTarget.classList.remove('is-hidden')
    document.getElementById("preview_catchy").classList.remove('is-hidden') // sorry andrea
  }
  addPricing(event) {
    event.preventDefault();
    this.card_pricingTarget.classList.remove('is-hidden')
    document.getElementById("preview_pricing").classList.remove('is-hidden') // sorry andrea
  }
  addCalendar(event) {
    event.preventDefault();
    this.card_calendarTarget.classList.remove('is-hidden')
    document.getElementById("preview_calendar").classList.remove('is-hidden') // sorry andrea
  }
  addContact(event) {
    event.preventDefault();
    this.card_contactTarget.classList.remove('is-hidden')
    document.getElementById("preview_contact").classList.remove('is-hidden') // sorry andrea
  }
}
