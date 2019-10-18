package npclinic.cs.controller;

import com.google.gson.Gson;
import npclinic.cs.dto.UserDTO;
import npclinic.cs.service.user.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

//@Controller 밑에 @RequestMapping("/board") 라고 써주면
//이 controller는 www.npclinic.com/board로 시작하는 모든 url을 담는다
//메서드에 @GetMapping("/news") 면 요청 url은 www.npclinic.com/board/news가 된다
@Controller
public class IndexController {

    /*
    UserService는 인터페이스다.
    UserService의 구현체는 NormalUserService와 VipUserService이다
    그런데 여기서 UserService를 사용했다.
    그러면 이 UserService는 Normal인지 Vip인지 모른다
    아래 @Qualifier는 UserService가 무엇을 사용할지 정한다.
     */
    @Autowired
    private UserService userService;

    @Autowired
    Gson gson;

    @GetMapping("/") // 클라이언트의 요철 url
    public String index(Model model){
        List<UserDTO> userDTOS = userService.getAllUser();
        for(UserDTO userDTO:userDTOS){
            System.out.println(userDTO);
        }
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
