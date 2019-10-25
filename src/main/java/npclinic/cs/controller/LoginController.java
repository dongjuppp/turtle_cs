package npclinic.cs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/*
로그인, 회원가입 컨트롤러
 */

@Controller
public class LoginController {

    @RequestMapping("/login")
    public String login(){
        return "login/login";
    }
}
