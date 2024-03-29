// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("trix")
require("@rails/actiontext")
//require("jquery")




// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
import "bootstrap"
// Enable for grid
//import * as Macy from "macy"
//import $ from "jquery"
//import "isotope-layout/dist/isotope.pkgd.js"
import "@fortawesome/fontawesome-free/js/all"
import { tns } from "tiny-slider/src/tiny-slider"
global.tns = tns
// Enable for grid
//global.Macy = Macy
//global.$ = $

import "./stylesheets/application"


document.addEventListener("turbolinks:load", () => {
  FontAwesome.config.mutateApproach = 'sync'; // Turbolinks fix for menu blinking 
})// Support component names relative to this directory:
var componentRequireContext = require.context("components", true);
var ReactRailsUJS = require("react_ujs");
ReactRailsUJS.useContext(componentRequireContext);
