var app = app || {};

// Router is similar to routes.rb in Rails but with code actions as well.
app.AppRouter = Backbone.Router.extend({
  routes: {
    '': 'index',
    'app': 'index',
    'app/flights/:id': 'selectSeat'
  },

  // GET /
  index: function () {
    // Filter the flightList to future flights only
    filteredList = app.flightList.upcoming();

    var FlightListView = new app.FlightListView({collection: filteredList});
    FlightListView.render();
  },

  selectSeat: function (id) {
    console.log("Seat Selection Page");
    var flight = app.flightList.get(id);
    plane_id = flight.get("plane_id");
    console.log("Plane ID:", plane_id);

    var planes = new app.Planes();
    
    planes.fetch().done(function() {
      var plane = planes.get(id);
      var aisle = plane.get("aisle");
      var seat = plane.get("seat");
      console.log("Plane:", plane);
      console.log("aisle:", aisle);
      console.log("seat:", seat);
      var SeatListView = new app.SeatListView({collection: plane});
      SeatListView.render();
    });

    // FOUND THE PLANE FOR THIS FLIGHT!!

  }

});