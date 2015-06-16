var app = app || {};

// Model.
app.Flight = Backbone.Model.extend({
  urlRoot: '/flights',
  defaults: {
    name: "FL001",
    date: "2015-08-01",
    origin: "Sydney",
    destination: "Melbourne",
    plane_id: "1"
  }
});