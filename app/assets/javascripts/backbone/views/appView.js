var app = app || {};

// Shows the landing page and a summary of all the blog posts.
app.AppView = Backbone.View.extend({
  el: '#main',
  render: function () {
    var appHTML = $('#appTemplate').html();
    this.$el.html(appHTML);

    console.log(this);
    
    this.collection.each(function (flight) {
      var flightListView = new app.FlightListView({model: flight});
      flightListView.render();
    });
  }
});