import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ['image']

  displayPreview(event) {
    const input = event.target
  
    if (input.files && input.files[0]) {
      const reader = new FileReader();
      reader.onload = (event) => {
        this.imageTarget.src = event.currentTarget.result;
      }
      reader.readAsDataURL(input.files[0])
      this.imageTarget.classList.remove('hidden');
    }
  }
}

// data-controller -> to wrap html elements you need access to
// data-target -> replaces document.querySelector
// data-action -> replaces element.addEventListener()
