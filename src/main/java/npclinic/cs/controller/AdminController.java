package npclinic.cs.controller;

import com.google.gson.Gson;
import npclinic.cs.dto.user.UserDTO;
import npclinic.cs.service.user.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;

public class AdminController {
    @Autowired
    private UserService userService;

    @Autowired
    Gson gson;

    @RequestMapping("/user_manage")
    public String manage(Model model){
        ArrayList<UserDTO> userList = null;
        userList = (ArrayList<UserDTO>) userService.getAllUser();

        model.addAttribute("")


        System.out.println(userDTO.getId());

        return "admin/user_info";
    }
}
