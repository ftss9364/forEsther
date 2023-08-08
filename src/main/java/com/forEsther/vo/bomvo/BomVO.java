package com.forEsther.vo.bomvo;

import java.util.List;

import com.forEsther.vo.bomregistrationvo.BomRegistrationVO;

import lombok.Data;

//BOM
@Data
public class BomVO { 
    private String bom_code; //BOM코드
    private String product_name; //제품명 (-> ItemVO 객체에서 받아올 예정)
    
    private List<BomRegistrationVO> bom_register_vo;
}