package npclinic.cs.dto.reserve;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.Date;

@Getter
@Setter
@ToString
public class ReserveDataDTO {

    private String name;
    private String email;
    private String phone;
    private Date Date;
    private Date time;
    private String dateStr;
    private String subject;
    private String doctor;
    private String message;
    private String userID; //예약할때 유저의 아이디도 받게함

}
