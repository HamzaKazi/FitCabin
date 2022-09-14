import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="like-button"
export default class extends Controller {
  connect() {
    console.log("hello")
    console.log(document.querySelectorAll('.hearts'))
    const hearts = document.querySelectorAll('.hearts')
    hearts.forEach((heart) => {
      heart.addEventListener('click', function (e) {
        heart.scrollTo(0, heart.scrollHeight)
    })
  })

  }
}
