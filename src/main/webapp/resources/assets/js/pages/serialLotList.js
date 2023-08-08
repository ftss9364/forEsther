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
    //window.addEventListener('message', function (event) {
      //  if (event.data && event.data.event === 'registerFormSubmitted') {
        //    $('#register-modal').modal('hide');
        //} else if(event.data && event.data.event == 'registerFormClosed') {
        //	$('#register-modal').modal('hide');
        //}
    //});	
    

    
    window.addEventListener('message', function (event) {
    if (event.data && event.data.event === 'registerFormSubmitted') {
        
        var isSuccess = `<%= session.getAttribute("success"); %>` // 세션 값 가져오기

        // 성공 여부에 따라 알림창 띄우기
        if (isSuccess) {
            alert("Serial/Lot가 등록되었습니다.");
            $('#register-modal').modal('hide'); // 모달창 닫기
        } else {
            alert("등록에 실패하였습니다.");
            $('#register-modal').modal('hide'); // 모달창 닫기
        };

        // 성공 또는 실패 메시지를 받은 후 세션 값 초기화
        `<% session.removeAttribute("success"); %>`
    	};
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
		let serial_lot_code = $(this).data('serial_lot_code');
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

var searchForm = $("#searchForm");

$("#searchForm #searchBtn").on("click",
	function(e) {
		console.log(11111);
		if (!searchForm.find("option:selected")
				.val()) {
			alert("검색종류를 선택하세요");
			return false;
		}

		if (!searchForm.find(
				"input[name='keyword']").val()) {
			alert("키워드를 입력하세요");
			return false;
		}

		searchForm.find("input[name='pageNum']")
				.val("1");
		e.preventDefault();

		searchForm.submit();

	});
	
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
