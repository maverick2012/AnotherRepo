	$(document).ready(function() {
		$("#bangalore").click(function() {
			$("#cities").hide("fast");
			$("#areas").show("fast");
		});
		$("#btm").click(function() {
			$("#areas").hide("fast");
			$("#shops").show("fast");
		});
		$("#shp1").click(function() {
			$("#shops").hide("fast");
			$("#proceed").show("fast");
		});
		$("#chngcity").click(function() {
			$("#shops").hide("fast");
			$("#proceed").hide("fast");
			$("#areas").hide("fast");
			$("#cities").show("fast");
		});
		$("#chngarea").click(function() {
			$("#shops").hide("fast");
			$("#proceed").hide("fast");
			$("#cities").hide("fast");
			$("#areas").show("fast");
		});
		$("#chngshp").click(function() {
			$("#proceed").hide("fast");
			$("#areas").hide("fast");
			$("#cities").hide("fast");
			$("#shops").show("fast");
		});
	});