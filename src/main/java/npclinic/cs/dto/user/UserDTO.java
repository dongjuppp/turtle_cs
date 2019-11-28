package npclinic.cs.dto.user;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.ArrayList;
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
    private int type; //string 으로 할지 int 로 할지 미정
    private String email;
    private String phone;
    private Date last_login;
    private Date reg_login;

    public ArrayList<String> toArrayList(){
        ArrayList<String> tmp = new ArrayList<>();
        tmp.add(id);
        tmp.add(name);
        tmp.add(birth);
        tmp.add(email);
        tmp.add(gender);
        tmp.add(phone);
        return tmp;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getBirth() {
        return birth;
    }

    public void setBirth(String birth) {
        this.birth = birth;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Date getLast_login() {
        return last_login;
    }

    public void setLast_login(Date last_login) {
        this.last_login = last_login;
    }

    public Date getReg_login() {
        return reg_login;
    }

    public void setReg_login(Date reg_login) {
        this.reg_login = reg_login;
    }
}
