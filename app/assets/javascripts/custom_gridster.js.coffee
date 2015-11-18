$(document).ready ->
  $(".gridster ul").gridster({
      widget_margins: [5, 5],
      widget_base_dimensions: [200, 200]
      resize: {
      	enabled: true
      };
  });