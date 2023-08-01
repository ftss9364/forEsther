package com.forEsther.vo.productionplanitemvo;

import lombok.Data;

//생산계획항목

@Data
public class ProductionPlanItemVO {
    private String production_plan_item_code; //생산계획항목코드
    private String item_code; //품목코드
    private String production_plan_code;  //생산처리계획서코드
    private String product_name;  //제품명
    private String bom_code;  //bom 코드
    private int scheduled_quantity;  //생산예정수량
}
