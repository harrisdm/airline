var app = app || {};

// Router is similar to routes.rb in Rails but with code actions as well.
app.AppRouter = Backbone.Router.extend({
  routes: {
    '': 'index',
    'app': 'index'
  },

  // GET /
  index: function () {
    var appView = new app.AppView({collection: app.flightList});
    appView.render();
  }

});