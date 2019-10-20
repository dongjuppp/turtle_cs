package npclinic.cs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BoardController {

    @RequestMapping("introduce")
    public String introduce(){
        return "board/introduce";
    }
}
