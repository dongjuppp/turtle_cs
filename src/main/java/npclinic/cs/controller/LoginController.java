package npclinic.cs.controller;

import javax.jws.soap.SOAPBinding;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import npclinic.cs.dto.user.UserDTO;
import npclinic.cs.service.user.UserService;
import npclinic.cs.service.user.UserServiceImpl;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/*
로그인, 회원가입 컨트롤러
 */

@Controller
public class LoginController {
    @Autowired
    private UserService userService;

    @Autowired
    Gson gson;

    @RequestMapping("/login_page")
    public String login(){
        UserDTO userDTO = userService.getUser("test1");

        System.out.println(userDTO.getId());

        return "login/login_page";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(@RequestParam("id") String id, @RequestParam("password") String password, HttpSession httpSession){
        UserDTO userDTO = null;
        userDTO = userService.getUser(id);
        System.out.println("0");

        if(userDTO == null){
            System.out.println("1");
            return "login/login_page";
        }

        else if(userDTO.getPassword().equals(password)){
            System.out.println("2");
            httpSession.setAttribute("user", userDTO);
            UserDTO tmp = (UserDTO)httpSession.getAttribute("user");
            System.out.println(tmp.getId());

            return "index";
        }

        else{
            System.out.println("3");
            return "login/login_page";
        }


    }





}
