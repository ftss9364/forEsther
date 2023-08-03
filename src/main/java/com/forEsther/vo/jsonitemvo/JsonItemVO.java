package com.forEsther.vo.jsonitemvo;

import java.util.List;

import com.forEsther.vo.itemsuppliervo.ItemSupplierVO;
import com.forEsther.vo.suppliervo.SupplierVO;

import lombok.Data;

//품목 JSON (*품목 등록시 Request 요청으로 Json 데이터 들어옴)
@Data
public class JsonItemVO {
	private String itemName;
    private String itemSpecification;
    private int safetyStock;
    private String supplierName;
    private String contactPerson;
    private String contactNumber;
    private String address;
}