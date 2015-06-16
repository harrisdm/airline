var app = app || {};

// Use {{ moustache style }} interpolation, instead of <%= erb style =>
_.templateSettings = {
  evaluate : /\{\[([\s\S]+?)\]\}/g,     // {[ console.log("Hello"); ]} - runs
  interpolate : /\{\{([\s\S]+?)\}\}/g   // {{ key }} - interpolates
};


// We wait for the document to finish loading
$(document).ready(function() {

  // Fetch posts from the dtabase on the server
  app.flightList = new app.Flights();
  app.flightList.fetch().done(function() {
    app.router = new app.AppRouter();
    Backbone.history.start();  
  });

});