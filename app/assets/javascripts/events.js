;$(document).ready(function(){

 function changeDomOnSearch(obj){
		$("#main-container").html("");
		_.each(obj, function(){
			console.log(obj);
		});
	}

	function bindings(){
		$("#submit").click(function(){
			$(".everything").remove();
			search( $("#search").val(), $("#search2").val(), changeDomOnSearch );
		});
	}

	bindings();
});