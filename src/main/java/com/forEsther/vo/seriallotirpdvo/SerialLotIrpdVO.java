package com.forEsther.vo.seriallotirpdvo;

import java.text.SimpleDateFormat;
import java.util.Date;

import com.forEsther.vo.seriallotvo.SerialLotVO;

import lombok.Data;

//시리얼로트 재고수불부

@Data
public class SerialLotIrpdVO {
    private String serial_lot_irpd_code; //재고수불부코드
    private String serial_lot_code;  //시리얼로트코드
    private String item_name;  //품목명
    private String irpd_category;  //수불구분(입고, 출고)
    private int variation_quantity; //변동 수량
    private int stock_quantity;  //재고 수량
    private String related_invoice; // 연결전표
    private String customer_name; //거래처명
    private SerialLotVO serialLotVO; // 시리얼로트 객체
    
    // Getter method for registration_date from SerialLotVO
    public String getRegistration_date() {
        if (serialLotVO != null) {
        	Date date = serialLotVO.getRegistration_date();
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            return sdf.format(date);
        }
        return null;
    }
    
    // Getter method for registration_date from SerialLotVO
    public String getSupplier() {
    	if (serialLotVO != null) {
    		return serialLotVO.getSupplier();
    	}
    	return null;
    }
}
