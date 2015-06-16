var app = app || {};

// Model.
app.Plane = Backbone.Model.extend({
  urlRoot: function () {
    return '/planes/' + this.get('plane_id');
  },
  defaults: {
    name: "Plane 1",
    aisle: 5,
    seat: 6
  }
});