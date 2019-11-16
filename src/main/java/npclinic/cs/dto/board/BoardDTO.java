package npclinic.cs.dto.board;

import lombok.Getter;
import lombok.Setter;

import java.util.Date;

@Getter
@Setter
public class BoardDTO {
    private int id;
    private String writer;
    private String title;
    private int views;
    private Date date;
    private String content;
    private int drop_menu_id;
    private String dateStr;

}
