homeTemplate = require('templates/home')

class exports.HomeView extends Backbone.View
  el: '#mid-content'

  render: ->
    $(@.el).html homeTemplate()
    @
