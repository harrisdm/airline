var app = app || {};

// Shows the landing page and a summary of all the flights.
app.SeatListView = Backbone.View.extend({
  el: '#main',
  events: {
    'click td': 'selectSeat'
  },

  selectSeat: function(event) {
    var box = $(event.currentTarget);
    if(box.hasClass("seat-booked")) {
      return;
    } else {
      if (box.hasClass('seat-selected')) {
        box.addClass('seat-open');
        box.removeClass('seat-selected');
      } else {
        box.addClass('seat-selected');
        box.removeClass('seat-open');
      }
    }

    // var url = "/flights/" + app.flight.get("id") + "/bookings";
    // var location = event.currentTarget.attributes[0].value.split("-");

    // $.post(url, {
    //   user_id: 1, 
    //   aisle: 1,
    //   seat: 1,
    //   flight_id: 1
    // });

    
    
  },

  render: function () {
    var seatListTemplate = $('#seatListTemplate').html();
    this.$el.html(seatListTemplate);

    var plane = this.collection;
    this.buildHeader(plane);
    this.buildAisles(plane);

  },

  buildHeader: function(plane) {
    var $row = $("<tr/>").append($("<th/>"));

    for(var i=0; i<app.plane.get("seat"); i++) {
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
      $row.append( $("<td id='" + i + "-" + j + "' class='seat seat-open' />") );
    }
    $("#seat-aisles").append( $row.append( $("<th/>").html(i+1) ) );
  }

});


