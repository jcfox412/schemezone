
$(function() {
    $( ".ui-datepicker-target" ).datepicker();
      var sub_wrapper2 = $("#search-bar");
    $(".listing-icon").hover(function(){
         $(($(this)[0].children[0])).slideUp(200, 'swing');
    }, function(){
        $(($(this)[0].children[0])).slideDown(200, 'swing');
    })
});