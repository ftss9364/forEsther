package com.forEsther.vo.purchaseordervo;

import java.util.Date;

import lombok.Data;

@Data
public class PurchaseOrderVO { //발주서
    private String purchase_order_code; //발주전표코드 PK
    private int purchase_order_index; //인덱스 PK
    private String employee_id; //사번 = 사용자 FK
    private String plan_of_purchase_orders_code; //발주계획서번호 = 발주계획서 FK
    private String supplier; //구매처
    private String item_code; //품목코드
    private String item_name; //품목명
    private int order_quantity; //발주수량
    private String item_specification; //규격
    private int purchase_price; //구매단가
    private Date order_date; //일자
    private Date scheduled_date; //입고예정일자
    private String status; //상태 (예 : 발주미완료,발주완료)
}
