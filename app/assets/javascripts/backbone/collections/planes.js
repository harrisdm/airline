var app = app || {};

// Collection of plane models
app.Planes = Backbone.Collection.extend({
  model: app.Plane,
  url: "/planes",

  

});