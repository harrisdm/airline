var app = app || {};

// Shows the landing page and a summary of all the flights.
app.SeatListView = Backbone.View.extend({
  el: '#main',

  render: function () {
    var seatListTemplate = $('#seatListTemplate').html();
    this.$el.html(seatListTemplate);

    console.log("collection", this.collection);
    var plane = this.collection;

    this.buildHeader(plane);
    this.buildAisles(plane);

  },

  buildHeader: function(plane) {
    var $row = $("<tr/>").append($("<th/>"));

    for(var i=0; i<=plane.get("aisle"); i++) {
      $row.append( $("<th/>").html( String.fromCharCode(65 + i) ) );
    }
    $("#seat-nums").append( $row.append($("<th/>")) );
  },

  buildAisles: function(plane) {
    for(var i=0; i<plane.get("aisle"); i++) {
      this.buildAisle(plane, i); 
    }
  }, 

  buildAisle: function(plane, i) {
    var $row = $("<tr/>").append($("<th/>").html(i+1));
    for(var j=0; j<plane.get("seat"); j++) {
      $row.append( $("<td/>").html("seat") );
    }
    $("#seat-aisles").append( $row.append( $("<th/>").html(i+1) ) );
  }


});


