package npclinic.cs.controller;

import npclinic.cs.dto.menu.HeaderMenuDTO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;




@Controller
public class BoardController {

    @RequestMapping("introduce")
    public String introduce(@RequestParam("num") int num){ //get 방식으로 보낸 num을 받음

        return "board/introduce";
    }

    @RequestMapping("medicinfo")
    public String mediInfo(@RequestParam("num") int num){
        return "board/introduce";
    }
}
