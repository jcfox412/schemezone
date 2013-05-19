var search_cur=0;
var last;
function search(name, loc, callback, last){
    if (last){
        last.offset = 10*search_cur;
    } else {
        search_cur = 0;
        last = {
            key: "TEKACENXPPGFKKYYCOIKWIUALTPNABMORQSXJBWOMNNEVDLQAFNUMJTQRIJWBCRX", 
            where: loc,
            what: name,
            format : "json",
            cat: "51,52,56,58,1102,60,1094,76",
        }
    }
    $.ajax({
        type: "GET",
        url: "http://www.zvents.com/partner_rest/search",
        crossDomain: true,
        data: last,
        dataType: "json",
        success: function(data){
            obj = data.rsp.content.events
            callback(obj, data.rsp.content.next_page);
            search_cur += 1;
        }
    });

}

