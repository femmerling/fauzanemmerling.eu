toolTemplate = require('templates/tool')

class exports.ToolView extends Backbone.View
  el: '#mid-content'

  render: ->
    $(@.el).html toolTemplate()
    @


