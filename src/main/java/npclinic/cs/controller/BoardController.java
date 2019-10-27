package npclinic.cs.controller;

import npclinic.cs.dto.menu.HeaderMenuDTO;
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

    @RequestMapping("/community")
    public String introduce(@RequestParam("num") int num){ //get 방식으로 보낸 num을 받음
        if(num == 1) { //공지사항
            System.out.println("공지사항 log");
        }
        else if(num == 2) { //자유게시판
            System.out.println("자유게시판 log");
        }
        else if(num == 3) { // 사진갤러리
            System.out.println("사진 갤러리 log");
        }
        return "board/introduce";
    }

    @RequestMapping("medicinfo")
    public String mediInfo(@RequestParam("num") int num){
        return "board/introduce";
    }
}
