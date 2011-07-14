contactTemplate = require('templates/contact')

class exports.ContactView extends Backbone.View
  el: '#mid-content'

  render: ->
    $(@.el).html contactTemplate()
    @



