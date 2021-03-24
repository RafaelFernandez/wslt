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
    } else if (inputType === 'link') {
        target.setAttribute("href", event.target.value);
    } else if (inputType === 'video') {
      target.innerHTML = this.generateYouTubeIframe(event.target.value)
      // target.src = event.target.value;
      // target.classList.remove("hidden")
      // target.contentWindow.location.reload()
    } else if (inputType === 'list') {
      const listItems = event.target.value.split("\n").map(li=>`<li>${li}</li>`)
      target.innerHTML = listItems.join("");
    } else {
      target.innerText = event.target.value
    }
  }

  generateYouTubeIframe (url){
    url = new URL(url)
    const params = new URLSearchParams(url.search)

    if(params.get("v")){
      url = `https://youtube.com/embed/${params.get("v")}` 
    } else {
      url = `https://youtube.com/embed/${url.toString(17)}`
    }
    return `
    <iframe width="560" height="315" src="${url}"  frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    `
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
