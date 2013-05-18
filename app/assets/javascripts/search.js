

    $(document).ajaxSend(function(e, xhr, options) {
      var token = $("meta[name='csrf-token']").attr("content");
      xhr.setRequestHeader("X-CSRF-Token", token);
    });

    function search(term){
        $.ajax({
            type: "GET",
            url: "http://www.zvents.com/partner_rest/search",
            crossDomain: true,
            data: { 
                key: "TEKACENXPPGFKKYYCOIKWIUALTPNABMORQSXJBWOMNNEVDLQAFNUMJTQRIJWBCRX", 
                where: term 
            },
            success: function(data){
                console.log(data)
            }
        });
 


    }

