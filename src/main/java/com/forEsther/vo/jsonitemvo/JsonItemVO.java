package com.forEsther.vo.jsonitemvo;

import lombok.Data;

//품목 JSON (*품목 등록시 Request 요청으로 Json 데이터 들어옴)
@Data
public class JsonItemVO {
	private String item_code;
	private String item_name;
    private String item_classification;
    private String item_specification;
    private int safety_stock;
    private String contact_person;
    private String contact_number;
    private String address;
    private String procurement;
    private String supplier_name;
    private String supplier_code;
    private String item_supplier_code;
}