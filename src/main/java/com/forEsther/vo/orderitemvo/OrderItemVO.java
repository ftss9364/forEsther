package com.forEsther.vo.orderitemvo;

import lombok.Data;

//주문항목

@Data
public class OrderItemVO {
    private String order_item_code; //주문항목코드
    private String item_code;  //항목코드
    private String order_code;  //주문서코드
    private String item_name;  //품목명
    private int quantity;  //수량
    private int unit_price;  //판매단가
}
