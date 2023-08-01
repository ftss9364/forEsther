package com.forEsther.vo.purchaseinvoicevo;

import java.util.Date;

import lombok.Data;

@Data
public class PurchaseInvoiceVO { //구매전표
    private String purchase_order_code; //발주전표코드 PK = 발주서 FK
    private int purchase_order_index; //인덱스 PK = 발주서 FK
    private String employee_id; //사번 = 사용자 FK
    private Date invoice_issuance_date; //구매전표발급일자
}
