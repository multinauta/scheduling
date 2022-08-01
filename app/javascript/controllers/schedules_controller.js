import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  static targets = [ "name", "city_id", "place_id", "specialist", "datetime" ]
  

  init() {
    const element = this.city_idTarget
    const city_id = element.value
    this.load(city_id)
  
  }

  
  load({param}) {
    fetch(`/usersbyplace?place_id=${this.city_idTarget.value}`).then(response => response.json()).then(data => {
      this.specialistTarget.innerHTML = data.map(user => `<option value="${user.id}">${user.email}</option>`).join("")
    })
  }
  
  

}