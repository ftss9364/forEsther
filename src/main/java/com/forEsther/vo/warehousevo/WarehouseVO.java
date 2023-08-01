package com.forEsther.vo.warehousevo;

import lombok.Data;

//지역창고

@Data
public class WarehouseVO {
    private String warehouse_code; //지역창고코드
    private String address; //주소
    private String warehouse_manager; //담당자
    private String contact; //연락처
    private String area_of_responsibility; //담당지역
}
