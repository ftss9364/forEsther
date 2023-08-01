package com.forEsther.vo.purchaseorderitemvo;

import lombok.Data;

//발주계획항목

@Data
public class PurchaseOrderItemVO {
    private String purchase_order_item_code; //발주계획항목코드
    private String item_code;  //품목코드  품목 FK
    private String plan_of_purchase_orders_code; //발주계획서번호  발주계획서 FK
    private String supplier; //구매처
    private String item_name; //품목명
    private int order_quantity;  //발주수량
    private String item_specification;  //규격
    private int purchase_price;  //구매단가
}
