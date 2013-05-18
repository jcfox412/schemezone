;$(document).ready(function(){

	var search_template = _.template($("#search-results-template").html());

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
								teams_2: event.performers[1].name
							}
						},
				});
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
	bindings();
});