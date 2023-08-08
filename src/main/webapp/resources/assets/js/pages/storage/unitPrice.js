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

    //단가 계산 라디오버튼

    $("input[name='cal-price']:radio").change(function () {
        const selectedBtn = this.value;
        let price = 0;
        
        if(selectedBtn == "op") {
            price = $("#sy-cal-op").val();

        } else {
            price = $("#sy-cal-bp").val();
        }
        
        $("#sy-cal-sp").val(price * ($("#sy-cal-m").val() / 100 + 1));
    });


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
                                  label : item.SERIAL_LOT_CODE
                                , value : item.SERIAL_LOT_CODE
                                ,status : item.STATUS
                                ,item : item.ITEM_NAME
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
            console.log(ui.item.item);
            $("#sy-op-input").val(ui.item.item);
        }
    }).autocomplete("instance")._renderItem = function (ul, item) {
        const type = item.status == "미등록" ? "secondary" : "info";

            $(ul).addClass("sy-auto-ul");

            return $('<li class="ui-menu-item-with-icon"></li>')
                .data("item.autocomplete", item)
                // .append('<a><span class="' + item.type + '-item-icon"></span>' + item.label + '</a>')
                .append('<span>' + item.label + '</span><span class="sy-item">' + item.item + '</span><span class="sy-status badge bg-label-' + type + '">' + item.status + '</span>')
                .appendTo(ul);
        };

    


	$("#basicModal").on("shown.bs.modal", function() {
	  $("#sy-sl-autocomplete").autocomplete("option", "appendTo", "#basicModal");
	})


    //파일 첨부 버튼

    $("#fileBtn").on("click", function(e) {
        e.preventDefault();

        const file = $("#fileInput")[0].files[0];

        $("input[name='file_name']").val(file.name);
        $("input[name='file_size']").val(file.size);
        $("input[name='file_format']").val(file.type);
    });


    $("#registerBtn").on("click", function(e) {
        e.preventDefault();

        $("#registerForm").submit();
    });

    //차트 모달
    $("body").on("click", ".sy-up-chart", function(e) {
        e.preventDefault();

        const icode = $(this).attr("href");
        const iname = $(this).parent().next().text();

        unitPriceService.getChart({icode, iname}, function(iname, data) {

            let min, max = data.result[0].MON_AVG; 
            let datas = [];
            let labels = [];
            let op = {
                min : min,
                max : max,
                iname : iname
            };

            data.result.forEach(element => {
                labels.push(element.MONTH + "월");
                datas.push(element.MON_AVG);
            });

            setChart(op, datas, labels);
        });

        $("#chartModal").modal("show");
    });


    //단가 상세조회 모달
    $("body").on("click", ".sy-up-detail", function(e) {
        e.preventDefault();

        const ucode = $(this).attr("href");

        unitPriceService.get({ucode}, function(unit_price) {
            $("#sy-read-modal-sl").text(unit_price.serial_lot_code);
            $("#sy-read-modal-op").text(unit_price.standard_cost.toLocaleString());
            $("#sy-read-modal-in").text(unit_price.item_name);
            $("#sy-read-modal-bp").text(unit_price.purchase_price.toLocaleString());
            $("#sy-read-modal-sp").text(unit_price.selling_price.toLocaleString());
            $("#sy-file-btn").attr("href", "/unitPrice/download/" + unit_price.unit_price_code);

            $("#readModal").modal("show");

        });

        unitPriceService.getThumbnail({ucode}, function(img, xhr) {

            const file_name = xhr.getResponseHeader("file-name");

            if(img != "") {
                $("#sy-file-dBtn-container").show();
                const binary = atob(img); // Base64 문자열을 바이너리 데이터로 변환

                const bytes = new Uint8Array(binary.length);
                for (let i = 0; i < binary.length; i++) {
                    bytes[i] = binary.charCodeAt(i);
                }
            
                const blob = new Blob([bytes], { type: 'image/png' });
                console.log(blob);

                const blobUrl = URL.createObjectURL(blob);
            
                const imgTag = "<img class='sy-thumbnail' src='" + blobUrl + "' />";
                $("#sy-file-thumbnail").append(imgTag);
                $("#sy-file-filename label").text(file_name);

            } else {
                console.log("첨부파일 없음");
                $("#sy-file-dBtn-container").hide();
            }
        })

        $(".thumbnail").on("click", function(e) {
            const url = $("#sy-file-thumbnail img").attr("src");
            $("body").append('<div id="fullscreen-image"><img src="' + url + '"></div>');
        })

        $("body").on("click", "#fullscreen-image", function(e) {
            $("#fullscreen-image").remove();
        })
    })
})  






const unitPriceService = (function(){
    //단가 상세조회
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

    //상세조회 청부파일 썸네일 요청
    function getThumbnail(param, callback, error) {
        const ucode = param.ucode;

        $.ajax({
            url : "/unitPrice/getThumbnail/" + ucode   
          , type : "GET"
          , success : function(data, textStatus, xhr){ 
            callback(data, xhr);
          }
          ,error : function(){
              alert("오류가 발생했습니다.");
          }
      });
    }

    function getChart(param, callback, error) {
        const icode = param.icode;
        const iname = param.iname;

        $.ajax({
            url : "/unitPrice/getChart/" + icode   
            , type : "GET"
            , dataType: "JSON"
            , success : function(data, textStatus, xhr){ 
              callback(iname, data);
            }
            ,error : function(){
                alert("오류가 발생했습니다.");
            }
        })
    }

    return {
        get: get,
        getThumbnail: getThumbnail,
        getChart: getChart
    };

})();

const b64StringToBlob = (b64Data, contentType='', sliceSize=512) => {
    const byteCharacters = atob(b64Data);
    const byteArrays = [];

    for (let offset = 0; offset < byteCharacters.length; offset += sliceSize) {
        const slice = byteCharacters.slice(offset, offset + sliceSize);
        const byteNumbers = new Array(slice.length);
        for (let i = 0; i < slice.length; i++) {
            byteNumbers[i] = slice.charCodeAt(i);
        }
        const byteArray = new Uint8Array(byteNumbers);
        byteArrays.push(byteArray);
    }
    const blob = new Blob(byteArrays, {type: contentType});
    return blob;
};


const setChart = function(op, data, labels) {
    const ctx = document.getElementById('myChart');
    const DATA_COUNT = 6;



    const datas = {
    labels: labels,
    datasets: [
        {
        label: op.iname,
        data: data,
        borderColor: '#1565C0',
        backgroundColor: '#1A7FF2',
        }
    ]
    };

    const config = {
    type: 'line',
    data: datas,
    options: {
        scales: {
            y: {
                min: op.min,
                max: op.max + 1000, 
                ticks: {
                    stepSize: 300
                }
            }
        },
        responsive: true,
        plugins: {
        legend: {
            position: 'top',
        }
        }
    },
    };


    new Chart(ctx, config);
};


