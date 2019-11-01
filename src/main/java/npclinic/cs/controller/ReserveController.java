package npclinic.cs.controller;

import npclinic.cs.dto.user.UserDTO;
import npclinic.cs.dto.reserve.ReserveDataDTO;
import npclinic.cs.service.reserve.ReserveService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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

    private final String RESERVE_URL = "reserve/reserve";
    private final String RESERVE_CHECK = "reserve/reserve_check";

    @RequestMapping("reserve")
    public String reserve(HttpSession session, Model model){
        String url = null;
        UserDTO userDTO = (UserDTO) session.getAttribute("user");
        //userDTO.setType("admin");
            if(userDTO == null){
                model.addAttribute("who","방문자");
            }
            else if(userDTO.getType().equals("admin")){
                model.addAttribute("who","관리자");
            }
            else{
                model.addAttribute("who","고객");
            }
            url = RESERVE_URL;
            //고객의 아이디로 가져오는데 예약을 2회 이상한 고객에 대하여 어떤식으로 처리할지..
            /*model.addAttribute("data",reserveService.getReserveDataByID(userDTO.getId()));
            System.out.println("예약확인 컨트롤러");
            url = RESERVE_CHECK;*/
            return url;
    }

    //여기서는 등록만 하고 다른 페이지로 넘겨주어야 한다.
    @RequestMapping(value = "reserveData", method = RequestMethod.POST)
    public String getReserveData(@ModelAttribute ReserveDataDTO reserveDataDTO,Model model){
        System.out.println("이름:"+reserveDataDTO.getName());
        System.out.println("메일:"+reserveDataDTO.getEmail());
        System.out.println("전화번호:"+reserveDataDTO.getPhone());
        System.out.println("날짜:"+reserveDataDTO.getDate());
        System.out.println("의사:"+reserveDataDTO.getDoctor());
        System.out.println("진료항목:"+reserveDataDTO.getSubject());
        System.out.println("메세지:"+reserveDataDTO.getMessage());
        reserveDataDTO.setUserID("dongjuppp");
        reserveService.registerData(reserveDataDTO);
        model.addAttribute("data",reserveDataDTO);
        return RESERVE_CHECK;
    }
    @RequestMapping("reserveCheck")
    public String reserveCheck(Model model, HttpSession session){
        UserDTO userDTO = (UserDTO)session.getAttribute("user");
        ReserveDataDTO reserveDataDTO = (ReserveDataDTO)reserveService.getReserveDataByID(userDTO.getId());
        model.addAttribute("data",reserveDataDTO);
        return RESERVE_CHECK;
    }
}
