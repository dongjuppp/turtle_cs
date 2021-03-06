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


    @RequestMapping("login_page")
    public String loginPage(){
        UserDTO userDTO = userService.getUser("test1");

        return "login/login_page";
    }


    /**
     *
     * @param password asdqwe
     * @param id asdasd
     * @param httpSession asdqwe
     * @return "index"
     * <p>Description</p>
     */
    @RequestMapping(value = "login", method = RequestMethod.POST)
    public String login(@RequestParam("id") String id, @RequestParam("password") String password, HttpSession httpSession){
        UserDTO userDTO = null;
        userDTO = userService.getUser(id);

        if(userDTO == null){
            return "login/login_page";
        }

        else if(userDTO.getPassword().equals(password)){
            httpSession.setAttribute("user", userDTO);
            UserDTO tmp = (UserDTO)httpSession.getAttribute("user");

            return "index";
        }

        else{
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
    public String registerUser(@ModelAttribute("userDTO") UserDTO userDTO, @RequestParam("first_phone") String first_phone,
                               @RequestParam("second_phone") String second_phone, @RequestParam("third_phone") String third_phone,
                               @RequestParam("birth") String birth){
        Date current = new Date();

        String[] token = birth.split("/");
        String dateFormat = token[2] + "/" + token[1] + "/" + token[0];
        System.out.println(dateFormat);

        userDTO.setBirth(dateFormat);
        userDTO.setPhone(first_phone + "-" + second_phone + "-" + third_phone);
        userDTO.setType(2);
        userDTO.setLast_login(current);
        userDTO.setReg_login(current);

        userService.insertUser(userDTO);

        return "index";
    }

    @RequestMapping("/update_page")
    public String updatePage(Model model, HttpSession httpSession){
        UserDTO userDTO = null;
        userDTO = userService.getUser(((UserDTO)httpSession.getAttribute("user")).getId());

        model.addAttribute("userDTO", userDTO);
        return "login/update_user";
    }

    @RequestMapping("/update_user")
    public String updateUser(@ModelAttribute("userDTO") UserDTO userDTO, HttpSession httpSession){
        userDTO.setId(((UserDTO)httpSession.getAttribute("user")).getId());
        userService.updateUser(userDTO);

        return "index";
    }

    //테스트를 위해 만든 메소드(jong hun, 이 메소드는 사용하지 말 것)
    @RequestMapping("/test_add")
    public String testaddUser(){

        UserDTO userDTO = new UserDTO();
        Date current = new Date();
        String id = "";

        for(int i = 3; i < 100; i++){
            id = "user" + i;

            userDTO.setId(id);
            userDTO.setPassword("1234");
            userDTO.setName("user");
            userDTO.setGender("남");
            userDTO.setBirth("1998/02/11");
            userDTO.setType(2);
            userDTO.setEmail("user@gmail.com");
            userDTO.setPhone("01011111111");
            userDTO.setLast_login(current);
            userDTO.setReg_login(current);

            userService.insertUser(userDTO);
        }

        return "index";
    }

}
