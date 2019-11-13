package npclinic.cs.dto.board;

import lombok.Getter;
import lombok.Setter;

import java.util.Date;

@Getter
@Setter
public class BoardDTO {
    private int id;
    private String user_id;
    private String title;
    private int views;
    private Date last_modified;
    private String content;
    private int drop_menu_id;

    public int getDropMenuId() {return this.drop_menu_id;}
    public int getId() {return this.id;}
    public String getUserId() {return this.user_id;}
    public String getTitle() {return this.title;}
    public int getViews() {return this.views;}
    public Date getDate() {return this.last_modified;}
    public String getContent() {return this.content;}

    public void setBoardUserId(String user_id){ this.user_id = user_id; }
    public void setBoardTitle(String title){ this.title = title; }
    public void setBoardDropMenuId(int drop_menu_id){ this.drop_menu_id = drop_menu_id; }
    public void setBoardViews(int views){ this.views = views; }
    public void setBoardLastModified(Date last_modified){ this.last_modified = last_modified; }
    public void setBoardContent(String content){ this.content = content; }

    public void setBoard(int id, String user_id, String title, int drop_menu_id, int views, Date last_modified, String Cotent) {
        this.id = id;
        this.user_id = user_id;
        this.title = title;
        this.drop_menu_id = drop_menu_id;
        this.views = views;
        this.last_modified = last_modified;
        this.content = content;
    }
}
