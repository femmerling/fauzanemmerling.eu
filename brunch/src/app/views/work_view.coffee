workTemplate = require('templates/work')

class exports.WorkView extends Backbone.View
  el: '#mid-content'

  render: ->
    $(@.el).html workTemplate()
    @

