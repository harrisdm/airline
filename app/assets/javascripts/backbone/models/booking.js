var app = app || {};

// Model.
app.Booking = Backbone.Model.extend({
  urlRoot: function () {
    return '/flights/' + this.get('id') + '/bookings';
  },
  defaults: {
    user_id: 0,
    flight_id: 0,
    aisle: 0,
    seat: 0
  }
});