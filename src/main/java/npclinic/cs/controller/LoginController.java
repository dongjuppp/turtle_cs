package npclinic.cs.controller;


import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import npclinic.cs.dto.user.UserDTO;
import npclinic.cs.service.user.UserService;
import npclinic.cs.service.user.UserServiceImpl;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Date;

/*
로그인, 회원가입 컨트롤러
 */

@Controller
public class LoginController {

    private UserService userService;

    private Gson gson;

    @Autowired
    public LoginController(UserService userService,Gson gson){
        this.userService=userService;
        this.gson=gson;
    }


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

    @RequestMapping("/logout")
    public String logout(HttpSession httpSession){
        httpSession.removeAttribute("user");
        return "index";
    }

    @RequestMapping("/login_info")
    public String loginInfo(@RequestParam("id") String id, Model model){
        System.out.println(id);

        UserDTO userDTO = null;
        userDTO = userService.getUser(id);

        model.addAttribute("user_info", userDTO);

        return "login/login_info";
    }

    @RequestMapping("/register_page")
    public String registerPage(Model model){
        model.addAttribute("userDTO", new UserDTO());
        return "login/register_user";
    }

    @RequestMapping("/insert_user")
    public String registerUser(@ModelAttribute("userDTO") UserDTO userDTO){
        Date current = new Date();

        userDTO.setLast_login(current);
        userDTO.setReg_login(current);

        userService.insertUser(userDTO);

        return "index";
    }

    @RequestMapping("/update_page")
    public String updatePage(Model model){
        model.addAttribute("userDTO", new UserDTO());
        return "login/update_user";
    }

    @RequestMapping("/update_user")
    public String updateUser(@ModelAttribute("userDTO") UserDTO userDTO, HttpSession httpSession){
        userDTO.setId(((UserDTO)httpSession.getAttribute("user")).getId());
        userService.updateUser(userDTO);

        return "index";
    }

}
