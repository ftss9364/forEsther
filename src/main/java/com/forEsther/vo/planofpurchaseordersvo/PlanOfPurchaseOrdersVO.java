package com.forEsther.vo.planofpurchaseordersvo;

import java.util.Date;

import lombok.Data;

//발주계획서
@Data
public class PlanOfPurchaseOrdersVO { 
    private String plan_of_purchase_orders_code; //발주계획서번호
    private String plan_name; //발주계획서명
    private String employee_id; //사번 (-> UserVO 객체에서 받아올 예정)
    private Date creation_date; //작성일자
    private String status; //상태 (예 : 대기, 결제요청, 승인, 반려)
}