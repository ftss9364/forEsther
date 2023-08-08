package com.forEsther.vo.unitpricevo;

import com.forEsther.vo.seriallotvo.SerialLotVO;

import lombok.Data;

@Data
public class UnitPriceVO { //댄가
    private String unit_price_code; //단가코드 PK
    private String serial_lot_code; //시리얼로트코드 = 시리얼로트 FK
    private String item_name; //품목명
    private int standard_cost; //표준원가
    private int purchase_price; //구매단가
    private int selling_price; //판매단가
    
    private SerialLotVO serialLotVO;
}