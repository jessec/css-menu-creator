jQuery.extend({
getValues: function(url) {
    
    var result = null;
    $.ajax({
        url: url,
        type: 'get',
        dataType: 'html',
        async: false,
        success: function(data) {
            result = data;
        }
    });
   
    return result;
	}
});