var app = app || {};

// Shows the landing page and a summary of all the flights.
app.FlightListView = Backbone.View.extend({
  el: '#main',
  events: {
    'keyup #origin': 'filterFlights',
    'keyup #destination': 'filterFlights',      
  },

  renderCollection: function (data) {
    //console.log(data);

    // Clear the current list of flights
    $("#flights").html("");

    data.each(function (flight) {
      var flightListItemView = new app.FlightListItemView({model: flight});
      flightListItemView.render();
    });
  },

  render: function () {
    // Display the page template
    var appHTML = $('#flightListTemplate').html();
    this.$el.html(appHTML);

    //  Render the current collection
    this.renderCollection(this.collection);
  },

  // Filter the current collection on contents of search fields
  filterFlights: function() {
    var origin = this.$el.find("#origin").val();
    var destination = this.$el.find("#destination").val();

    // For some reason this.collection is a wrapped array and not a collection
    // This means that it doesn't have the inherited collection functions
    // Filtering and then creating a new collection allows access to the functions
    // THERE MUST BE A BETTER WAY!!
    // var currentCollection = this.collection.filter(function(flight){
    //   return flight;
    // });
    // var newCollection = new app.Flights(currentCollection);
    // LOOKS LIKE I FOUND ONE!!
    var newCollection = new app.Flights(this.collection.models);
    //console.log(newCollection);

    
    // Filter the collection of flights to only include matched strings
    if( origin !== "" ) { newCollection = newCollection.matchLocation("origin", origin); }
    if( destination !== "" ) { newCollection = newCollection.matchLocation("destination", destination); }

    this.renderCollection(newCollection);
  }

});



