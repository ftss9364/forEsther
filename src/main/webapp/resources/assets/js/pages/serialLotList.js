console.log("load ListPage");


	//수정
	// 수정버튼 클릭
	$('.modifyBtn').on('click', function(e) {
		e.preventDefault();
		let serial_lot_code = $(this).data('serial_lot_code');
		let href = '/serialLot/serialLotModify?serial_lot_code=' + serial_lot_code;
		$('#go-modify').attr("src", href);
		
		$('#modify-modal').modal('show');
	}) // end modify-modal
    // 모달 닫기를 위한 이벤트 핸들러 등록
    window.addEventListener('message', function (event) {
        if (event.data && event.data.event === 'modifyFormSubmitted') {
            $('#modify-modal').modal('hide');
        } else if(event.data && event.data.event == 'modifyFormClosed') {
        	$('#modify-modal').modal('hide');
        }
    });
    // 모달이 닫힐 때 리다이렉트하도록 아래 코드 추가
    $('#modify-modal').on('hidden.bs.modal', function (e) {
        window.location.href = "/serialLot/serialLotList";
    });
	

    // 신규등록
    // 모달 닫기를 위한 이벤트 핸들러 등록
    window.addEventListener('message', function (event) {
        if (event.data && event.data.event === 'registerFormSubmitted') {
            $('#register-modal').modal('hide');
        } else if(event.data && event.data.event == 'registerFormClosed') {
        	$('#register-modal').modal('hide');
        }
    });	
    
    // 모달이 닫힐 때 리다이렉트하도록 아래 코드 추가
    $('#register-modal').on('hidden.bs.modal', function (e) {
        window.location.href = "/serialLot/serialLotList";
    });
	
	// 상세정보 출력
	// 시리얼로트 코드 클릭
	$('.open-detail-modal').on('click', function(e) {
		console.log("detail-modal");
		e.preventDefault();
		let serial_lot_code = $('.open-detail-modal').data('serial_lot_code');
		let href = '/serialLot/serialLotGet?serial_lot_code=' + serial_lot_code;
		$('#go-get').attr("src",href)
		
		$('#detail-modal').modal('show');
	}); // end detail-modal
	
    // 모달 닫기를 위한 이벤트 핸들러 등록
    window.addEventListener('message', function (event) {
        if (event.data && event.data.event === 'detailClosed') {
            $('#detail-modal').modal('hide');
        }
    });
   
   // total text
   // 페이지 로드 시와 테이블 내용이 변경될 때마다 total-text에 행의 개수를 업데이트하는 함수
  function updateTotalText() {
    var tableRows = $('.table tbody tr');
    $('#total-text').text('전체 ' + tableRows.length + ' 건');
  }

  // 페이지 로드 시 실행
  $(document).ready(function() {
    updateTotalText();

    // 테이블 내용이 변경될 때마다 실행
    var tableBody = $('.table tbody')[0];
    var observer = new MutationObserver(updateTotalText);
    observer.observe(tableBody, { childList: true });
  });

    
    
    