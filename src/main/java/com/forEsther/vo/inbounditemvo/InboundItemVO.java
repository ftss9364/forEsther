package com.forEsther.vo.inbounditemvo;

import lombok.Data;

@Data
public class InboundItemVO { //입고항목
    private String inbound_item_code; //입고항목코드 PK
    private String purchase_order_code; //발주전표코드 = 구매전표 FK
    private int purchase_order_index; //인덱스 = 구매전표 FK
    private String item_code; //품목코드
    private String item_name; //품목명
    private String item_specification; //규격
    private int quantity; //수량
    private String inspection_status; //입고심사여부
    private String inbound_status; //입고여부
}
