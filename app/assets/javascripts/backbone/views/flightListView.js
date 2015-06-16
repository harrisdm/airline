var app = app || {};

// View for a single post title (i.e. the summary view).
app.FlightListView = Backbone.View.extend({
  tagName: 'tr',
  render: function () {
    var flightListTemplate = $('#flightListTemplate').html();
    var flightListHTML = _.template(flightListTemplate);

    this.$el.html( flightListHTML( this.model.toJSON() ) );

    $('#flights').append(this.$el);
  }
});