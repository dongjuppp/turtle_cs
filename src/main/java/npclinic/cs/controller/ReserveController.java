package npclinic.cs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ReserveController {

    @RequestMapping("reserve")
    public String reserve(@RequestParam("num") int num){
        return "reserve/reserve";
    }
}
