// total text
// 페이지 로드 시와 테이블 내용이 변경될 때마다 total-text에 행의 개수를 업데이트하는 함수
function updateTotalText() {
    var tableRows = $('.table tbody tr');
    $('#total-text').text('전체 ' + tableRows.length + ' 건');
} // end updateTotalText

// 상세정보 출력
// 시리얼로트 코드 클릭
$(document).on('click', '.open-detail-modal', function(e) {
	e.preventDefault();
	console.log("detail-modal");
	let serial_lot_code = $(this).data('serial_lot_code');
	let href = '/serialLot/serialLotIrpdGet?serial_lot_code=' + serial_lot_code;
	$('#go-get').attr("src",href)
		
	$('#serialLotIrpdDetail-modal').modal('show');
	console.log("show");
}); // end detail-modal
	
// 모달 닫기를 위한 이벤트 핸들러 등록
window.addEventListener('message', function (event) {
    if (event.data && event.data.event === 'detailClosed') {
	$('#detail-modal').modal('hide');
	}
});
  
// 페이지 로드 시 실행
$(document).ready(function() {
    updateTotalText();

    // 테이블 내용이 변경될 때마다 실행
    var tableBody = $('.table tbody')[0];
    var observer = new MutationObserver(updateTotalText);
    observer.observe(tableBody, { childList: true });
    

}); // end onload

var serialLotIrpdService = (function (){

	function getList(callback, error) {
		console.log("getList....");
		$.getJSON("/rest/serialLotIrpdList",
		function(data) {
			if (callback) {
				callback(data);
			}
		}) // end getJSON
		.fail(function(xhr, status, err) {
			error(err);
		}); // end fail
	} // end getList
	
	function get(serial_lot_code, callback, error) {
		$.get("/rest/serialLotIrpdGet/" + serial_lot_code,
		function(data) {
			if(callback) {
				callback(data);
			}
		}) // end get
		.fail(function(xhr, status, err){
			error(err);
		}) // end fail
	}// end get
	
	return{
		getList,
		get
	};
}) (); // end serialLotIrpdService

// HTML에서 메뉴 아이템들을 선택
const menuItems = document.querySelectorAll('.menu-item');
console.log(menuItems);

// 각 메뉴 아이템에 클릭 이벤트 리스너 추가
menuItems.forEach(item => {
   item.addEventListener('click', () => {
      // 모든 메뉴 아이템의 active 클래스 제거
      menuItems.forEach(menuItem => {
         menuItem.classList.remove('active');
      });
      
      // 클릭한 메뉴 아이템에 active 클래스 추가
      item.classList.add('active');
   });
});


  
