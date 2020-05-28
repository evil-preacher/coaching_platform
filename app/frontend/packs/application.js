require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

import "core-js/stable"
import "regenerator-runtime/runtime"
import "../stylesheets/application"
import './bootstrap_custom.js'

const images = require.context('../images', true)
const imagePath = (name) => images(name, true)

const videos = require.context('../videos', true)
const videoPath = (name) => images(videos, true)

$(document).on('turbolinks:load', function () {
  $(".flash-block").delay(2000).slideUp(500, function () {
    $(".flash-block").alert('close');
  });
});
