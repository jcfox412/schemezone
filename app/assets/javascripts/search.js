

    function search(name, loc, callback){
        $.ajax({
            type: "GET",
            url: "http://www.zvents.com/partner_rest/search",
            crossDomain: true,
            data: { 
                key: "TEKACENXPPGFKKYYCOIKWIUALTPNABMORQSXJBWOMNNEVDLQAFNUMJTQRIJWBCRX", 
                where: loc,
                what: name,
                format : "json",
                cat: "9"
            },
            dataType: "json",
            success: function(data){
                obj = data.rsp.content.events
                callback(obj);
            }
        });

    }

