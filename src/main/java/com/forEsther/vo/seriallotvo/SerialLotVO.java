package com.forEsther.vo.seriallotvo;

import java.util.Date;


import lombok.Data;
// 시리얼로트
@Data
public class SerialLotVO {
    private String serial_lot_code; // 시리얼 로트 코드
    private String item_code; // 품목코드 (-> ItemVO 객체에서 받아올 예정)
    private Date registration_date; // 일자 (등록일자)
    private String item_name; // 품목명 (-> ItemVO 객체에서 받아올 예정)
    private Date expiration_date; // 유통기한 (해당 객체에서 직접 지정)
    private int stock_quantity; // 재고수량
    private String supplier; // 구매처 (-> SupplierVO 객체에서 받아올 예정)
    private String related_invoice; // 연결전표
    
}