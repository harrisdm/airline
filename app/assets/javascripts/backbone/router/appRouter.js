var app = app || {};

// Router is similar to routes.rb in Rails but with code actions as well.
app.AppRouter = Backbone.Router.extend({
  routes: {
    '': 'index',
    'index': 'index',
    'flights/:id': 'selectSeat'
  },

  // GET /
  index: function () {
    // Filter the flightList to future flights only
    filteredList = app.flightList.upcoming();

    var FlightListView = new app.FlightListView({collection: filteredList});
    FlightListView.render();
  },

  selectSeat: function (id) {
    app.flight = app.flightList.get(id);

    // Find the plane for this flight to draw the seating plan
    plane_id = app.flight.get("plane_id");
    var temp = this;
    app.allPlanes = new app.Planes();
    app.allPlanes.fetch().done(function() {
      app.plane = app.allPlanes.get(plane_id);
      temp.showSeating();
      temp.alreadyBooked();
    });
  },

  showSeating: function() {
    // Display the seating plan
    var SeatListView = new app.SeatListView({collection: app.plane});
    SeatListView.render();
  },

  alreadyBooked: function() {
    // Find the bookings for this flight
    app.currentBookings = new app.Bookings();
    app.currentBookings.fetch().done(function() {
      console.log("Bookings:",app.currentBookings);

      app.currentBookings.each( function(booking) {
        var aisle = booking.get("aisle");
        var seat = booking.get("seat");
        $("#"+ aisle + "-" + seat).addClass('seat-booked');
      });
    });
  }


});