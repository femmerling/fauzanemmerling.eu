window.app = {}
app.controllers = {}
app.models = {}
app.collections = {}
app.views = {}

MainController = require('controllers/main_controller').MainController
HomeView = require('views/home_view').HomeView
WorkView = require('views/work_view').WorkView
ToolView = require('views/tool_view').ToolView
ContactView = require('views/contact_view').ContactView

# app bootstrapping on document ready
$(document).ready ->
  app.initialize = ->
    app.controllers.main = new MainController()
    app.views.home = new HomeView()
    app.views.work = new WorkView()
    app.views.tool = new ToolView()
    app.views.contact = new ContactView()
    Backbone.history.saveLocation("home") if Backbone.history.getFragment() is ''
  app.initialize()
  Backbone.history.start()
