var bomSearchService = (function() {
    function add(search, claaback, error){
        console.log("reply..........................");
		$.ajax({
			type : 'post',
			url : '/bom/result',
			data : JSON.stringify(search), //JSON으로 변환
			contentType : "application/json; charset=utf-8",
			success : function(result, status, xhr){
				if(callback){
					callback(result);
				}
			},
			error : function(xhr, status, er){
				if(error){
					error(er);
				}
			}
		});
    }
})();