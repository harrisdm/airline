var app = app || {};

// Model.
app.Booking = Backbone.Model.extend({
  urlRoot: function () {
    return '/flights/' + this.get('id') + '/bookings';
  },
  defaults: {
    user_id: 1,
    flight_id: 1,
    aisle: 1,
    seat: 1
  }
});