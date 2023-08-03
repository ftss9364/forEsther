$(function() {

	//페이징 이벤트
    const actionForm = $("#actionForm");

    $(".page-link").on("click", function(e) {
        e.preventDefault();
        
        actionForm.find("input[name='pageNum']")
            .val($(this).attr("href"));
        actionForm.submit();
    })


    $("#sy-cal-body").hide();
	
	//등록폼 판매단가 이벤트
    $("body").on("change", "#sy-select", function(e) {
        const result = $("#sy-select option:selected").val();
        if(result == "Y") {
            $("#sy-cal-body").show();
        } else {
            $("#sy-cal-body").hide();
        }
    })



    //등록폼 시리얼로트 자동완성

    $("#sy-sl-autocomplete").autocomplete({
        source: function(request, response) {
            $.ajax({
                url : "/unitPrice/autocomplete"   
              , type : "POST"
              , dataType: "JSON"
              , data : {value: request.term}
              , success : function(data){ 
                  response(
                      $.map(data.resultList, function(item) {
                          return {
                                  label : item.SEARCH_WORD
                                , value : item.SEARCH_WORD
                                , idx : item.SEQ
                          };
                      })
                  ); 
              }
              ,error : function(){
                  alert("오류가 발생했습니다.");
              }
          });
        },
        focus: function(event, ui) {
            return false;
        },
        minLength: 2,
        autoFocus: true,
        delay: 100,
        select: function(evt, ui) {
            console.log(ui.item.label);
            console.log(ui.item.idx);
        }
    })









    //단가 상세조회 모달
    $("body").on("click", ".sy-up-detail", function(e) {
        e.preventDefault();

        const ucode = $(this).attr("href");

        unitPriceService.get({ucode}, function(unit_price) {
            $("#sy-read-modal-sl").text(unit_price.serial_lot_code);
            $("#sy-read-modal-op").text(unit_price.standard_cost);
            $("#sy-read-modal-in").text(unit_price.item_name);
            $("#sy-read-modal-bp").text(unit_price.purchase_price);
            $("#sy-read-modal-sp").text(unit_price.selling_price);

            $("#readModal").modal("show");

        });
    })


})  




const unitPriceService = (function(){
    function get(param, callback, error) {
        const ucode = param.ucode;

        $.getJSON("/unitPrice/get/" + ucode,
            function(data) {
                if(callback) {
                    callback(data);
                }
        }).fail(function(xhr, status, err) {
            if(error) {
                error(err);
            }
        })
    }


    return {
        get: get
    };

})();