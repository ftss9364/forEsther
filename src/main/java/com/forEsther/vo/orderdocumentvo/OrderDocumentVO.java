package com.forEsther.vo.orderdocumentvo;

import lombok.Data;

@Data
public class OrderDocumentVO { //주문서
    private String order_code; //주문서코드 PK
    private String employee_id; //사번 = 사용자 FK
    private String dispatch_code; //배차코드 = 배차 FK
    private String warehouse_code; //지역창고코드 = 지역창고 FK
    private String purchaser; //구매자
    private String address; //주소
    private String contact; //연착처
}