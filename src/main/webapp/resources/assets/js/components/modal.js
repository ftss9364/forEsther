// form 관련 태그
const formEl = document.querySelector("form");
const radioBtnEls = document.getElementsByName("item-classification");
const itemNameEl = document.querySelector("#item-name");
const itemSpecificationValueEl = document.querySelector("#item-specification");
const itemSpecificationUnitEl = document.querySelector("#item-specification-unit");
const safetyStockEl = document.querySelector("#safety-stock");
const supplierNameEl = document.querySelector("#supplier_name");
// search 관련 태그
const searchBtnEl = document.querySelector("#supplier-name-searchBtn");
const searchInputEl = document.querySelector("#supplier_name");
// 구매처 정보 관련 태그
const hiddenEl = document.querySelectorAll(".visible-hidden");
const contactPersonEl = document.querySelector("#contact-person");
const contactNumberEl = document.querySelector("#contact-number");
const addressEl = document.querySelector("#address");

console.log(hiddenEl);

// 구매처 검색 이벤트
searchBtnEl.addEventListener("click", (e) => {
  if(searchInputEl.value == "" || searchInputEl.value == null) {
    return 
  }

  $.ajax({
    url: '/supplier/search',
    type: 'GET',
    data: { searchValue: searchInputEl.value},
    success: function(result) {
      console.log(result);

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
    error: function(jqXHR, textStatus, errorThrown) {
      console.log(textStatus);
      console.log('ajax error...');
    }
  });
})

let itemSpecificationUnit = 'kg';

// 품목구분 버튼 이벤트 
radioBtnEls.forEach(btn => {
  btn.addEventListener("click", (e) => {
    data.itemClassification = e.currentTarget.value;
  })
})

// 규격 단위 셀렉트 이벤트 
itemSpecificationUnitEl.addEventListener("change", (e) => {
  itemSpecificationUnit = e.currentTarget.value;
})

// 품목 등록 이벤트
formEl.addEventListener("submit", (e) => {
  const data = {
    itemClassification: '',
    itemName: '',
    itemSpecification: '',
    safetyStock: '',
    supplierName: '',
    contactPerson: '',
    contactNumber: '',
    address: ''
  };

  data.itemName = itemNameEl.value;
  data.itemSpecification = itemSpecificationValueEl.value + itemSpecificationUnit;
  data.safetyStock = safetyStockEl.value;
  data.supplierName = supplierNameEl.value;
  data.contactPerson = contactPersonEl.value;
  data.contactNumber = contactNumber.value;
  data.address = addressEl.value;

  const jsonData = JSON.stringify(data);

  $.ajax({
    url: '/item/register',
    type: 'POST',
    contentType: 'application/json',
    data: jsonData,
    success: function(result) {
      console.log('ajax success...')
      console.log(result);
      
    },
    error: function(jqXHR, textStatus, errorThrown) {
      console.log('ajax error...');
    }
  });
})
