package npclinic.cs.controller;

import com.google.gson.Gson;
import npclinic.cs.dto.UserDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
public class SecondController {

    private Gson gson;
    @Autowired
    public SecondController(Gson gson){
        this.gson=gson;
    }

    @RequestMapping("second")
    public String second(){
        return "second";
    }

    //secondAjax에서 JSON문자열 형태로 보내준것을 문자열형태로 받음
    @RequestMapping(value = "/second/ajax", method = RequestMethod.POST)
    @ResponseBody
    public String secondAjax(@RequestParam("data")String user){
        UserDTO userDTO = gson.fromJson(user,UserDTO.class); //JSON문자열 형태를 자바 UserDTO로 변환
        return gson.toJson(userDTO);
    }

    //ajaxTest 에서 보낸 자바스크립트 객체를 자바 객체UsetDTO에 그대로 전달
    @RequestMapping(value = "/second/ajax2", method = RequestMethod.POST)
    @ResponseBody
    public String test( UserDTO userDTO){
        return gson.toJson(userDTO); //JSON형태로 리턴
    }
}
