import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['button']

  handleClick(e) {
    e.preventDefault();
    this.element.classList.toggle('reveal-answers')
    console.log(e.target.dataset.formId)
    const id = e.target.dataset.formId
    const form = document.getElementById(id)
    console.log(form)
    setTimeout(() => {
      form.submit()
    }, 1000)
  }
}
