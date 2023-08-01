package com.forEsther.vo.productioncompletionitemvo;

import lombok.Data;

//생산완료항목

@Data
public class ProductionCompletionItemVO {
    private String production_plan_item_code; //생산계획품목코드
    private String production_plan_code;  //생산처리계획서코드
    private int actual_production_quantity;  //실제생산수량
}
