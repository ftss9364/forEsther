package com.forEsther.vo.dispatchvo;

import lombok.Data;

@Data
public class DispatchVO { //배차 PK
    private String dispatch_code; //배차코드
    private int max_load_capacity; //최대적재량
    private String driver_name; //기사명
    private String contact; //연착처
    private String status; //상태
}
