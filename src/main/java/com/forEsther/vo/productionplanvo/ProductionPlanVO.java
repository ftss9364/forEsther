package com.forEsther.vo.productionplanvo;

import java.util.Date;

import lombok.Data;

//생산처리계획서
@Data
public class ProductionPlanVO { 
    private String production_plan_code; //생산처리계획서코드
    private String production_plan_name; //생산처리계획서명
    private Date creation_date; //작성일자
    private String employee_id; //사번 (-> UserVO 객체에서 받아올 예정)
    private String status; //생산 상태(예 : 반려,생산예정,생산중,생산전표)
}