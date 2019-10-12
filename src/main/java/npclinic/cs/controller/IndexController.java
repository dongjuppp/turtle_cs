package npclinic.cs.controller;

import npclinic.cs.dto.UserDTO;
import npclinic.cs.service.user.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class IndexController {

    @Autowired
    UserService userService;

    @RequestMapping("/")
    public String index(Model model){
        List<UserDTO> userDTOS = userService.getUserList();
        model.addAttribute("userList",userDTOS);
        return "index";
    }
}
