$(function() {
  // initialize scrollable
  $("#scrollable").scrollable({circular: true, mousewheel: true}).navigator().autoscroll({
	interval: 3000
});
});