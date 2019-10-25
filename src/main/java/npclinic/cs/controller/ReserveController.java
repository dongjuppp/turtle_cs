package npclinic.cs.controller;

import npclinic.cs.service.reserve.ReserveDataDTO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/*
예약 페이지 컨트롤러
 */

@Controller
public class ReserveController {

    @RequestMapping("reserve")
    public String reserve(@RequestParam("num") int num){
        return "reserve/reserve";
    }

    @RequestMapping(value = "reserveData", method = RequestMethod.POST)
    public String getReserveData(@ModelAttribute ReserveDataDTO reserveDataDTO){
        System.out.println("이름:"+reserveDataDTO.getName());
        System.out.println("메일:"+reserveDataDTO.getEmail());
        System.out.println("전화번호:"+reserveDataDTO.getPhone());
        System.out.println("날짜:"+reserveDataDTO.getDate());
        System.out.println("의사:"+reserveDataDTO.getDoctor());
        System.out.println("진료항목:"+reserveDataDTO.getSubject());
        System.out.println("메세지:"+reserveDataDTO.getMessage());

        return "index";
    }
}
