// form 관련 태그
const formEl = document.querySelector(".modal-content");
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
  itemCode: '',
  itemClassification: '',
  itemName: '',
  itemSpecification: '',
  safetyStock: '',
  supplierName: '',
  contactPerson: '',
  contactNumber: '',
  address: '',
  procurement: '',
};

let itemSpecificationUnit = 'kg';

// 구매처 검색 이벤트
searchBtnEl.addEventListener("click", (e) => {
  $.ajax({
    url: '/supplier/search',
    type: 'GET',
    data: { searchValue: searchInputEl.value},
    success: function(result) {
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
    data.itemClassification = e.currentTarget.value;
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