var app = app || {};

// Collection of plane models
app.Bookings = Backbone.Collection.extend({
  model: app.Booking, 
  url: function () {
    return '/flights/' + app.flight.get("id") + '/bookings';
    //return '/flights/' + this.flight_id + '/bookings';
  }

});