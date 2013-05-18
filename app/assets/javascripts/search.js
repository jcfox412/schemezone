

    function search(name, loc, callback){
        $.ajax({
            type: "GET",
            url: "http://www.zvents.com/partner_rest/search",
            crossDomain: true,
            data: { 
                key: "TEKACENXPPGFKKYYCOIKWIUALTPNABMORQSXJBWOMNNEVDLQAFNUMJTQRIJWBCRX", 
                where: loc,
                what: name,
                "format" : "json",
            },
            dataType: "json",
            success: function(data){
                // var events = []
                // $(xml).find('event').each(function(){
                //    var id = $(this).attr('id')
                //    var name = $(this).find('name').text();

                //    var images = []

                //    $(this).find('images').each(function(){
                //     images.push($(this).find("url").text())
                //    });

                //    events.push({"id": id, "name" : name, "images":images})

                // });
                obj = data.rsp.content.events
                console.log(obj)
                // callback(events)
            }
        });

    }

