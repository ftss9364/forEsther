package com.forEsther.vo.itemsuppliervo;

import com.forEsther.vo.suppliervo.SupplierVO;

import lombok.Data;

@Data
public class ItemSupplierVO { //품목구매처
   private String item_supplier_code; //품목구매처 코드 PK
   private String supplier_code; //구매처 코드 = 구매처 FK
   private String item_code; //품목 코드 = 품목 FK
   
   private SupplierVO supplier_vo;
}
