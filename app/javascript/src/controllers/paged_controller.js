import { Controller } from "stimulus"
import fullpage from 'fullpage.js';

export default class extends Controller {
  connect() {
    new fullpage(this.element, {
      autoScrolling: true,
      scrollHorizontally: true
    });
  }
}
