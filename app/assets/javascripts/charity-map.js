function openMarkerInfo(id) {
  $.each(markers, function() {
    if (marker.id == id) {
      google.maps.event.trigger(marker.getServiceObject(), 'click')
    }
  });
};

var openInfoWindow = function(id) {
	for (var i=0; i<= markers; i++){
		if (markers.id == id) {
			google.maps.event.addListener(marker.getServiceObject(), 'click')
		}
		else {
			alert("NO!")
		}
		
	};
};

$('#marker6').click(openInfoWindow(4));