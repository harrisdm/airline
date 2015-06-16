var app = app || {};

// Collection of a particular model
app.Flights = Backbone.Collection.extend({
  model: app.Flight,
  url: "/flights"
})