import { Controller } from "stimulus";
import Rails from 'rails-ujs';

export default class extends Controller {
  static targets = ['button']

  handleClick(e) {
    e.preventDefault();
    this.element.classList.toggle('reveal-answers')
    const id = e.target.dataset.formId
    const form = document.getElementById(id)
    setTimeout(() => {
      Rails.fire(form, 'submit');
    }, 1000)
  }
}
