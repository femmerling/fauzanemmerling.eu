class exports.MainController extends Backbone.Controller
  routes :
    "home": "home"
    "work": "work"
    "tool": "tool"
    "contact":"contact"

  home: ->
    app.views.home.render()

  work: ->
    app.views.work.render()

  tool: ->
    app.views.tool.render()

  contact: ->
    app.views.contact.render()

