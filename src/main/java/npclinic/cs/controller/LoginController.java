package npclinic.cs.controller;

import javax.servlet.http.HttpSession;

import npclinic.cs.service.user.UserServiceImpl;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/*
로그인, 회원가입 컨트롤러
 */

@Controller
public class LoginController {

    @RequestMapping("/login_page")
    public String login(){

        return "login/login_page";
    }

    /*
    @RequestMapping(value = "login", method = RequestMethod.POST)
    public String login(@RequestParam("id") String id, @RequestParam("password") String password,
                        HttpSession session){

    }
     */




}
