var app = app || {};

// View for a single flight entry in the search table
app.FlightListItemView = Backbone.View.extend({
  tagName: 'tr',
  render: function () {
    var flightListTemplate = $('#flightListItemTemplate').html();
    var flightListHTML = _.template(flightListTemplate);

    this.$el.html( flightListHTML( this.model.toJSON() ) );

    $('#flights').append(this.$el);
  }
});