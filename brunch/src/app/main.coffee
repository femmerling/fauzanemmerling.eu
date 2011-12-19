window.app = {}
app.routers = {}
app.models = {}
app.collections = {}
app.views = {}

MainRouter = require('routers/main_router').MainRouter
HomeView = require('views/home_view').HomeView
WorkView = require('views/work_view').WorkView
ToolView = require('views/tool_view').ToolView
ContactView = require('views/contact_view').ContactView

# app bootstrapping on document ready
$(document).ready ->
  app.initialize = ->
    app.routers.main = new MainRouter()
    app.views.home = new HomeView()
    app.views.work = new WorkView()
    app.views.tool = new ToolView()
    app.views.contact = new ContactView()
    app.routers.main.navigate 'home', true if Backbone.history.getFragment() is ''
  app.initialize()
  Backbone.history.start()
