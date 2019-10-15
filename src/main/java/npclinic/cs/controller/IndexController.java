package npclinic.cs.controller;

import com.google.gson.Gson;
import npclinic.cs.dto.UserDTO;
import npclinic.cs.service.user.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class IndexController {

    @Autowired
    UserService userService;

    @Autowired
    Gson gson;

    @RequestMapping("/")
    public String index(Model model){
        List<UserDTO> userDTOS = userService.getUserList();
        model.addAttribute("userList",userDTOS);
        return "index";
    }

    //여기서 index페이지에서 넘어온 ajax통신을 받는다
    @RequestMapping(value = "/index/ajax", method = RequestMethod.POST)
    @ResponseBody
    public String indexAjax(@RequestParam("data") String msg){ //여기서 index에서온 값을 받는다
        return gson.toJson(msg+" 하하하");
    }
}
