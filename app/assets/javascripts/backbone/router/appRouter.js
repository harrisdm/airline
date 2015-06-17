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

    //console.log("Seat Selection Page");
    var flight = app.flightList.get(id);
    app.flight = app.flightList.get(id);

    // Find the plane for this flight to draw the seating plan
    plane_id = flight.get("plane_id");
    //console.log("Plane ID:", plane_id);

    var planes = new app.Planes();
    planes.fetch().done(function() {
      var plane = planes.get(id);
      var aisle = plane.get("aisle");
      var seat = plane.get("seat");
      // console.log("Plane:", plane);
      // console.log("aisle:", aisle);
      // console.log("seat:", seat);

      // Display the seating plan
      var SeatListView = new app.SeatListView({collection: plane});
      SeatListView.render();
    });

    // Find the bookings for this flight
    var bookings = new app.Bookings();
    bookings.fetch().done(function() {
      //console.log("Bookings:",bookings);
      bookings.each( function(booking) {

        var aisle = booking.get("aisle")
        var seat = booking.get("seat")
        //console.log("aisle:", aisle);
        //console.log("seat:", seat);

        $("#"+ aisle + "-" + seat).html("xxx");
      });
    });
    

  }

});