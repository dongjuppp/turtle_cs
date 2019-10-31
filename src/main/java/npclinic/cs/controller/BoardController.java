package npclinic.cs.controller;

import npclinic.cs.dto.menu.HeaderMenuDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/*
게시판 컨트롤러
num을 GET방식으로 받아 어떤 게시판인지 구분
 */
@Controller
public class BoardController {
    private final String INTRODUCE_URL = "board/introduce";
    @Autowired
    public BoardController(){
        System.out.println("313131313");
    }

    @RequestMapping("introduce")
    public String introduce(Model model){
        System.out.println("13131");
        return "board/introduce";
    }
    @RequestMapping("medicinfo") //주소
    public String mediInfo(){
        return "board/introduce"; // jsp파일 경로,이름
    }
}
