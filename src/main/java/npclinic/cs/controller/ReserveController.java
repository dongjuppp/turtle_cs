package npclinic.cs.controller;

import npclinic.cs.dto.user.UserDTO;
import npclinic.cs.dto.reserve.ReserveDataDTO;
import npclinic.cs.service.reserve.ReserveService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;

/*
예약 페이지 컨트롤러
 */

@Controller
public class ReserveController {

    private ReserveService reserveService;

    @Autowired
    public ReserveController(ReserveService reserveService){
        this.reserveService=reserveService;
    }

    final String RESERVE_URL = "reserve/reserve";
    final String RESERVE_CHECK = "reserve/check";

    @RequestMapping("reserve")
    public String reserve(@RequestParam("num") int num, HttpSession session){
        UserDTO userDTO = (UserDTO) session.getAttribute("user");

        return RESERVE_URL;
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
        reserveDataDTO.setUserID("dongjuppp");
        reserveService.registerData(reserveDataDTO);
        return "index";
    }
}
