var app = app || {};

// Router is similar to routes.rb in Rails but with code actions as well.
app.AppRouter = Backbone.Router.extend({
  routes: {
    '': 'index',
    'app': 'index'
  },

  // GET /
  index: function () {
    // Filter the flightList to future flights only
    filteredList = app.flightList.upcoming();

    var FlightListView = new app.FlightListView({collection: filteredList});
    FlightListView.render();
  }

});