package com.forEsther.vo.uservo;

import lombok.Data;

//사용자

@Data
public class UserVO {
    private String employee_id; //사번
    private String user_name;  //이름
    private String contact;  //연락처
    private String user_position; //직책
    private String department;  //부서
    private String user_password; //비밀번호
}
