import { Controller } from "stimulus"

export default class extends Controller {
  updatePreview(event, imageUrl){
    const inputType = event.target.dataset.inputType
    const previewTarget = event.target.dataset.previewTarget
    const target = document.querySelector(`[${previewTarget}]`)

    if (inputType === 'background_image') {
      target.style.backgroundImage = `url(${imageUrl})`
    } else if (inputType === 'image') {
      target.src = imageUrl;
    } else {
      target.innerText = event.target.value
    }
  }

  getImageUrl(event) {
    const input = event.target
  
    if (input.files && input.files[0]) {
      const reader = new FileReader();
      reader.onload = (e) => {
        this.updatePreview(event, e.currentTarget.result)
      }
      reader.readAsDataURL(input.files[0])
    }
  }
}
