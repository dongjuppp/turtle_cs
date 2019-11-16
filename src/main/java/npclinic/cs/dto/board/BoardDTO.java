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

    public int getDropMenuId() {return this.drop_menu_id;}
    public int getId() {return this.id;}
    public String getUserId() {return this.writer;}
    public String getTitle() {return this.title;}
    public int getViews() {return this.views;}
    public Date getDate() {return this.date;}
    public String getContent() {return this.content;}

    public void setBoardUserId(String writer){ this.writer = writer; }
    public void setBoardTitle(String title){ this.title = title; }
    public void setBoardDropMenuId(int drop_menu_id){ this.drop_menu_id = drop_menu_id; }
    public void setBoardViews(int views){ this.views = views; }
    public void setBoardLastModified(Date date){ this.date = date; }
    public void setBoardContent(String content){ this.content = content; }

    public void setBoard(String writer, String title, int drop_menu_id, int views, String cotent) {
        this.writer = writer;
        this.title = title;
        this.drop_menu_id = drop_menu_id;
        this.views = views;
        this.content = content;
    }
}
