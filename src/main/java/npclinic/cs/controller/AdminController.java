package npclinic.cs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AdminController {

    @RequestMapping("/user_manage")
    public String admin(){
        System.out.println("abc");
        return "admin/user_manage";
    }
}
