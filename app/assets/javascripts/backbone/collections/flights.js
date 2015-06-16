var app = app || {};

// Collection of a particular model
app.Flights = Backbone.Collection.extend({
  model: app.Flight,
  url: "/flights",

  // Filter the flights to only future flights
  upcoming: function () {
     var currentDate = new Date();
    // var result = _(this.filter(function(data) {
    //   // Only include cases where the data is >= now
    //   return Date.parse(data.get("date")) >= currentDate;
    // }));
    // return result;

    // THE ABOVE CODE WORKS BUT PASSES A WRAPPED ARRAY
    // RE-WROTE BELOW TO MATCH THE matchLocation FUNCTION

    var result = this.filter(function(data) {
      // Only include cases where the data is >= now
      return Date.parse(data.get("date")) >= currentDate;
    });
    return new app.Flights(result);

  },

  // Filter the flights on a text string for the passed field
  matchLocation: function (field, locationText) {
    var matches = this.filter(function(flight){
        // Only include cases where the string is found (not -1)
        return flight.get(field).toLowerCase().indexOf(locationText.toLowerCase()) !== -1;
    });
    return new app.Flights(matches);
  }

})