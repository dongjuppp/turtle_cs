package npclinic.cs.dto.reserve;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.Date;

@Getter
@Setter
@ToString
public class ReserveDataDTO {

    private Date Date;
    private int time;
    private String subject;
    private String doctor;
    private String message;
    private String userID; //예약할때 유저의 아이디도 받게함
    private String dataStr;
    private String name;
    private String gender;
    private String status;

    public boolean equals(ReserveDataDTO reserveDataDTO){


        if(!reserveDataDTO.userID.equals(userID))
            return false;

        if(!reserveDataDTO.doctor.equals(doctor))
            return false;

        if(!reserveDataDTO.subject.equals(subject))
           return false;


        return true;
    }

}
