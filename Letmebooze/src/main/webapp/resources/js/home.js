function theRotator() {
	$('div.images ul li').css({opacity: 0.0});
	setInterval('rotate()',5000);
}

function rotate() {	
	var current = ($('div.images ul li.show')?  $('div.images ul li.show') : $('div.images ul li:first'));
    if ( current.length == 0 ) current = $('div.images ul li:first');
	var next = ((current.next().length) ? ((current.next().hasClass('show')) ? $('div.images ul li:first') :current.next()) : $('div.images ul li:first'));
	next.css({opacity: 0.0})
	.addClass('show')
	.animate({opacity: 1.0}, 2000);
	current.animate({opacity: 0.0}, 2000)
	.removeClass('show');
};
$(document).ready(function() {		
	theRotator();
	$('div.images').fadeIn(3000);
    $('div.images ul li').fadeIn(3000);
});

function loginpg() {
$('#logpg').show();
$('#regpg').hide();
}
function ll() {
$('#logpg').hide();
$('#regpg').hide();
}
function regnpg() {
$('#regpg').show();
$('#logpg').hide();
}

