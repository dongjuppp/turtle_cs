package npclinic.cs.service.reserve;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ReserveDataDTO {

    private String name;
    private String email;
    private String phone;
    private String date;
    private String subject;
    private String doctor;
    private String message;

}
