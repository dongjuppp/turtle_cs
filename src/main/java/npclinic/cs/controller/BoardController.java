package npclinic.cs.controller;

import npclinic.cs.dto.menu.HeaderMenuDTO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
public class BoardController {

    @RequestMapping("introduce")
    public String introduce(){

        return "board/introduce";
    }
}
