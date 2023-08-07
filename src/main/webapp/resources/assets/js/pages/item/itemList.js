const editBtnEls = document.querySelectorAll(".edit-btn");
const deleteBtnEls = document.querySelectorAll(".delete-btn");
const detailBtnEls = document.querySelectorAll(".itemCode-btn");

const modalItemDetailDataEls = document.querySelectorAll(".data-container");
const supplierTbodyEL = document.querySelector("#supplier-tbody");

// 등록 form 관련 태그
const registerBtnEL = document.querySelector(".modal-register");
const radioBtnEls = document.getElementsByName("item-classification");
const itemNameEl = document.querySelector("#item-name");
const itemSpecificationValueEl = document.querySelector("#item-specification");
const itemSpecificationUnitEl = document.querySelector("#item-specification-unit");
const safetyStockEl = document.querySelector("#safety-stock");
const supplierNameEl = document.querySelector("#supplier_name");
// 구매처 검색 관련 태그
const searchBtnEl = document.querySelector("#supplier-name-searchBtn");
const searchInputEl = document.querySelector("#supplier_name");
const warnTextEl = document.querySelector(".warning-text");
// 구매처 정보 관련 태그
const hiddenEl = document.querySelectorAll(".visible-hidden");
const contactPersonEl = document.querySelector("#contact-person");
const contactNumberEl = document.querySelector("#contact-number");
const addressEl = document.querySelector("#address");

const data = {
  item_code: '',
  item_classification: '',
  item_name: '',
  item_specification: '',
  safety_stock: '',
  address: '',
  procurement: '',
  supplier_name: '',
  supplier_code: '',
  contact_person: '',
  contact_number: '',
  item_supplier_code: ''
};

let itemSpecificationUnit = 'kg';

// 구매처 검색 이벤트
searchBtnEl.addEventListener("click", (e) => {
  $.ajax({
    url: '/supplier/search',
    type: 'GET',
    data: { searchValue: searchInputEl.value},
    success: function(result) {
      console.log('구매코드: ' + result.supplier_code);
      data.supplier_code = result.supplier_code;
      console.log(data);

      hiddenEl.forEach(el => {
        el.classList.remove("visible-hidden");
      });

      searchInputEl.value = result.supplier_name;
      contactPersonEl.value = result.contact_person;
      contactNumberEl.value = result.contact_number;
      addressEl.value = result.address;

      contactPersonEl.setAttribute("disabled", true);
      contactNumberEl.setAttribute("disabled", true);
      addressEl.setAttribute("disabled", true);

    },
    error: function() {
      console.log('구매처 검색 요청 에러...');
    }
  });
})

// 품목구분 버튼 이벤트 
radioBtnEls.forEach(btn => {
  btn.addEventListener("click", (e) => {
    data.item_classification = e.currentTarget.value;
    if(e.currentTarget.value === '제품') {
      data.procurement = '생산';
    } else {
      data.procurement = '구매';
    }
  })
})

// 규격 단위 셀렉트 이벤트 
itemSpecificationUnitEl.addEventListener("change", (e) => {
  itemSpecificationUnit = e.currentTarget.value;
})


// 품목 등록 버튼 이벤트
registerBtnEL.addEventListener("submit", (e) => {
  e.preventDefault();

  data.item_name = itemNameEl.value;
  data.item_specification = itemSpecificationValueEl.value + itemSpecificationUnit;
  data.safety_stock = safetyStockEl.value;
  data.supplier_name = supplierNameEl.value;
  data.contact_person = contactPersonEl.value;
  data.contact_number = contactNumberEl.value;
  data.address = addressEl.value;

  console.log(data);
  $.ajax({
    url: '/item/register',
    type: 'POST',
    data: JSON.stringify(data),
    contentType : "application/json; charset=utf-8",
    success: function(result) {
      console.log('품목 등록 요청 성공...');
      if(result == 'success') {
        location.href = '/item/list';
      }

      console.log(result);
    },
    error: function() {
    console.log('품목 등록 요청 에러...');
    }
    });
})


// 상세보기 버튼 이벤트
detailBtnEls.forEach(btn => {
  btn.addEventListener("click", (e) => {
    $.ajax({
      url: '/item/detail',
      type: 'GET',
      data: { itemCode: e.currentTarget.value},
      success: function(result) {
        console.log('상세보기 요청 성공...');
        console.log(result);

        // 품목 코드
        modalItemDetailDataEls[0].innerHTML = 
          `<span class="data-title">품목코드</span>
          <span class="data-value">${result.item_code}</span>`;
        
        // 품목 구분
        modalItemDetailDataEls[1].innerHTML = 
          `<span class="data-title">품목구분</span>
          <span class="data-value">${result.item_classification}</span>`;
        
        // 품목명
        modalItemDetailDataEls[2].innerHTML = 
         `<span class="data-title">품목명</span>
         <span class="data-value">${result.item_name}</span>`;
       
        // 규격
        modalItemDetailDataEls[3].innerHTML = 
         `<span class="data-title">규격</span>
         <span class="data-value">${result.item_specification}</span>`;
          
        // 안전재고량
        modalItemDetailDataEls[4].innerHTML = 
         `<span class="data-title">안전재고량</span>
         <span class="data-value">${result.safety_stock}</span>`;
       
        // 조달정보
        modalItemDetailDataEls[5].innerHTML = 
         `<span class="data-title">조달정보</span>
         <span class="data-value">${result.procurement}</span>`;

        if(result.itemsupplier_vo.length != 0) {
          result.itemsupplier_vo.forEach(supplier => {
            supplierTbodyEL.innerHTML = 
              `<tr>
                <td>${supplier.supplier_vo.supplier_code}</td>
                <td>${supplier.supplier_vo.supplier_name}</td>
                <td>${supplier.supplier_vo.contact_person}</td>
              </tr>`;
          })
        }

      },
      error: function() {
        console.log('상세보기 요청 에러...');
      }
    });
  })
})


// 수정 버튼 이벤트
editBtnEls.forEach(btn => {
  btn.addEventListener("click", (e) => {
    console.log('click');
    $.ajax({
      url: '/item/detail',
      type: 'GET',
      data: { itemCode: e.currentTarget.value },
      success: function(result) {
        console.log('수정 데이터 요청 성공...');
        const spc_value = result.item_specification.replace(/[A-Za-z]+/g, ''); 
        const spc_unit = result.item_specification.replace(/\d+/g, '');

        document.querySelector("#modify-name").value = result.item_name;
        document.querySelector("#modify-specification").value = spc_value;
        document.querySelector("#modify-specification-unit").value = spc_unit;
        document.querySelector("#modify-stock").value = result.safety_stock;

        console.log(item_classification);

        if(result.item_classification == '원재료') {
          document.querySelector("#ingredient").setAttribute("checked", true);
        } else if (result.item_classification == '제품') {
          document.querySelector("#product").setAttribute("checked", true);
        } else if (result.item_classification == '상품') {
          document.querySelector("#goods").setAttribute("checked", true);
        }

      },
      error: function() {
        console.log('수정 데이터 요청 에러...');
      }
    });
  })
})

// 삭제 버튼 이벤트
deleteBtnEls.forEach(btn => {
  btn.addEventListener("click", (e) => {
    $.ajax({
      url: '/item/remove',
      type: 'POST',
      data: {
        itemCode: e.currentTarget.value
      },
      success: function(result) {
        console.log('품목 삭제 요청 성공...');
        if(result == 'success') {
          location.href = '/item/list';
        }
      },
      error: function() {
        console.log('품목 삭제 요청 에러...');
      }
    });
  })
})

const pageBtnEls = document.querySelectorAll(".page-link");

pageBtnEls.forEach(btn => {
  btn.addEventListener("click", (e) => {
    console.log(e.currentTarget)
  })
})