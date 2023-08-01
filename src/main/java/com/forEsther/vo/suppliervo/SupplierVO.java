package com.forEsther.vo.suppliervo;

import lombok.Data;

@Data
public class SupplierVO { //구매처
    private String supplier_code; //구매처코드 PK
    private String supplier_name; //회사명 
    private String contact_person; //담당자
    private String contact_number; //연착처
    private String address; //주소
}