package npclinic.cs.controller;

import com.google.gson.Gson;
import npclinic.cs.dto.user.UserDTO;
import npclinic.cs.service.user.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;

@Controller
public class AdminController {
    @Autowired
    private UserService userService;

    @Autowired
    Gson gson;

    @RequestMapping("/user_manage")
    public String manage(Model model){
        ArrayList<UserDTO> userList = null;
        userList = (ArrayList<UserDTO>) userService.getAllUser();

        model.addAttribute("user_list", userList);

        return "admin/user_info";
    }

    @RequestMapping("/info_edit")
    public String edit(@RequestParam("id") String id, Model model){
        UserDTO userDTO = null;
        userDTO = userService.getUser(id);

        model.addAttribute("user_info", userDTO);

        return "admin/info_edit";
    }
}
