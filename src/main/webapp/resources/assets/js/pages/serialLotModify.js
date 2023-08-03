$('#submitBtn').on('click', function(e) {
	$('#modifyForm input[name="item_code"], #modifyForm input[name="supplier"]').remove();
	window.parent.postMessage({ event: 'modifyFormSubmitted' }, '*');
})// end submit onclick
