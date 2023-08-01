package com.forEsther.vo.productionInvoicevo;

import java.util.Date;

import lombok.Data;

//생산전표
@Data
public class ProductionInvoiceVO { 
    private String production_plan_code; //생산처리계획서코드 (-> ProductionPlanVO 객체에서 받아올 예정)
    private String employee_id; //사번 (-> UserVO 객체에서 받아올 예정)
    private Date invoice_issuance_date; //생산전표발급일자
}