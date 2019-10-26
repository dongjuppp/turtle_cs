package npclinic.cs.dto.user;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.Date;

/*
@Setter @Getter는 spring의 annotation이 아니다
프로젝트 롬복이라는 도구를 사용해서
DTO의 변수를 캡슐화 해준다.
 */

@Setter
@Getter
@ToString
public class UserDTO {

    private String id;
    private String password;
    private String name;
    private String gender;
    private String birth;
    private String type; //string 으로 할지 int 로 할지 미정
    private String email;
    private String phone;
    private Date lastLogin;
    private Date regLogin;
}
