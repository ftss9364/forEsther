package com.forEsther.vo.bomregistrationvo;

import lombok.Data;

//BOM 등록
@Data
public class BomRegistrationVO { 
    private String bom_registration_code; //BOM등록코드
    private String bom_code; //BOM코드 (-> BomVO 객체에서 받아올 예정)
    private String item_code; //품목코드 (-> ItemVO 객체에서 받아올 예정)
    private int required_quantity; //원재료 필요수량
}
