docInteractive = require('document-promises').interactive

bindFormToChromeStorage = require "./lib/bind-form-to-chrome-storage.js"

template = require "./templates/popup.js"

docInteractive.then ->
  document.body.innerHTML = template()
  form = document.body.querySelector "form"
  bindFormToChromeStorage form, "devOptions", "local"
