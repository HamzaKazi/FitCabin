import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="nutritionix"
export default class extends Controller {

  connect() {
    // query.addEventListener("keyup", e => {



    document.querySelector("#query-search").addEventListener("click", e => {

    const query = document.querySelector("#query").value
    const weight = document.querySelector("#weight").value
      console.log(weight)

    fetch(`https://api.edamam.com/api/food-database/v2/parser?app_id=3543b3b6&app_key=ddbbad637ebc1845703cc748ebfaac5b&ingr=${query}`, {
      // headers: {
      //   "app_id": "YOUR_API_ID",
      //   "app_key": "YOUR_API_KEY",
      //   "ingr": "potato",
      // }
    })
      .then(response => response.json())
      .then((data) => {
        // console.log(data.parsed[0])

          const carbs = parseFloat(data.hints[0].food.nutrients["CHOCDF"])
          let carbsGrams = (carbs/100) * parseFloat(`${weight}`)

          const calories = parseFloat(data.hints[0].food.nutrients["ENERC_KCAL"])
          let caloriesGrams = (calories/100) * parseFloat(`${weight}`)

          const fat = parseFloat(data.hints[0].food.nutrients["FAT"])
          let fatGrams = (fat/100) * parseFloat(`${weight}`)

          const fibre = parseFloat(data.hints[0].food.nutrients["FIBTG"]) || "No fibre"
          let fibreGrams = (fibre/100) * parseFloat(`${weight}`)

          const protein = parseFloat(data.hints[0].food.nutrients["PROCNT"])
          let proteinGrams = (protein/100) * parseFloat(`${weight}`)

          console.log(parseFloat(data.hints[0].food.nutrients["CHOCDF"]));
          const img = data.hints[0].food["image"]
          // const imageUrl =  <div><img src= "img" alt=""></div>
          console.log(img)
          const html = `
          <div class="foodclass">
            <p><b>Item: </b><span>${data.hints[0].food["label"]}</span></p>
          </div>

          <div class="food-image">
            <img src=${img} alt="">
          </div>

          <ul class="list-food">
          <li><b>Carbs: </b><span> ${carbsGrams} g kcal in ${weight}g of ${query} </span></li></span></li>
          <li><b>Calories: </b><span> ${caloriesGrams} kcal in ${weight}g of ${query} </span></li>
          <li><b>Fats: </b><span> ${fatGrams} g kcal in ${weight}g of ${query} </span></li></span></li>
          <li><b>Fibre: </b><span> ${fibreGrams} g kcal in ${weight}g of ${query} </span></li></span></li>
          <li><b>Protein: </b><span> ${proteinGrams} g kcal in ${weight}g of ${query} </span></li></span></li>
          </ul>
          link_to "add", food_path(@food, name: name, calories: carbsGrams)

          </div>
          `

          document.querySelector("body").insertAdjacentHTML("beforeend", html)
          return html

        }
      )
    })
  }

// const search = document.querySelector('#search-button');
// search.addEventListener('click', (event) => {
//   event.preventDefault();
//   const movieWord = document.getElementById('movie-search');
//    ul.innerText = '';
//   movieList(movieWord.value);
// });
  // send(event) {
  //   event.preventDefault()
  //    console.log(event)
  //   }
  // curl -XPOST https://api.nutritionix.com/v1_1/search -H 'Content-Type: application/json' -d'
  // {



    // fetch("https://trackapi.nutritionix.com/v2/log")
    //   .then(response => response.json())
    //   .then((data) => {
    //     console.log(data)
    //   })
    //  "appId":"YOUR_API_ID",
    //  "appKey":"YOUR_API_KEY",
    //  "query":"Cookies `n Cream"
    // }

    // method: "GET",
    // headers: {
    //   "appId":"28a8ae00",
    //   "appKey":"630d37f12ac1d66d57ebdb7f0717810c",
    //   "query":"Cookies"
    //   // "x-app-id": "28a8ae00",
    //   // "x-app-key": "630d37f12ac1d66d57ebdb7f0717810c",
    //    "x-remote-user-id": 0
    // }})
}
