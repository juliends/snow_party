import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['button']

  handleClick() {
    this.element.classList.toggle('reveal-answers')
  }
}
