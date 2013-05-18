;$(document).ready(function(){

	var search_template = _.template($("#search-results-template").html());
	var team_select_template = _.template($("#modal-popup").html());

  function changeDomOnSearch(events){
		$("#schema-container").remove();
		var matches = _.filter(events, function(event){
										return event.performers.length == 2;
									});
		$("#events-container").html("").show();
		$("#events-container").append(
			search_template({ count: matches.length })
		);
		_.each(matches, function(event){
			var ev = $("<div class='event'>"+event.name+"</div>");
			console.log(event.performers);
			ev.click(function(){
				$.ajax({
						type: 'POST',
						url: '/events',
						data: {
							event: {
								stubhub_eventId: event.id,
								name : event.name,
								image_url: event.images[0].url,
								team_1: event.performers[0].name,
								team_2: event.performers[1].name
							}
						},
				});

				$("#team-select").html(team_select_template(event)).modal();
			});
			$("#events").append(ev);
		});
	}

	function bindings(){
		$("#submit").click(function(e){
			console.log("click");
			$(".everything").remove();
			search( $("#search").val(), $("#search2").val(), changeDomOnSearch );
			e.preventDefault();
			return false;
		});
	}
	$(".box").on("")
	bindings();
});