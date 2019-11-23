package npclinic.cs.controller;

import npclinic.cs.dto.user.UserDTO;
import npclinic.cs.dto.reserve.ReserveDataDTO;
import npclinic.cs.service.reserve.ReserveService;
import org.apache.catalina.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.awt.*;

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

        private final String RESERVE_JSP = "reserve/reserve";
    private final String RESERVE_CHECK_JSP = "reserve/reserve_check";

    @RequestMapping("reserveDoReserve")
    public String reserve(HttpSession session, Model model){
        String url = null;
        UserDTO userDTO = (UserDTO) session.getAttribute("user");
        //userDTO.setType("admin");
            if(userDTO == null){
                model.addAttribute("who","방문자");
            }
            else if(userDTO.getType().equals("admin")){
                model.addAttribute("who","관리자");
                //return RESERVE_CHECK;
                //return "redirect:reserveReserveCheck"; //관리자가 예약하기를 누르면 예약확인 페이지로 이동
                return RESERVE_JSP;

                /*
                그런데 이거 내가 관리자가 고객예약 가능하게 하겠다고
                예약하기 화면으로 한건데 왜 이렇게 바꿨어???
                 */
                /* 까먹었,,,,,,*/
            }
            else{
                model.addAttribute("who","고객");

            }
            url = RESERVE_JSP;
            //고객의 아이디로 가져오는데 예약을 2회 이상한 고객에 대하여 어떤식으로 처리할지..
            /*model.addAttribute("data",reserveService.getReserveDataByID(userDTO.getId()));
            System.out.println("예약확인 컨트롤러");
            url = RESERVE_CHECK;*/
            return url;
    }

    //여기서는 등록만 하고 다른 페이지로 넘겨주어야 한다.
    @RequestMapping(value = "reserveData", method = RequestMethod.POST)
    public String getReserveData(@ModelAttribute ReserveDataDTO reserveDataDTO,Model model,HttpSession httpSession){
        UserDTO userDTO = (UserDTO)httpSession.getAttribute("user");
        if(userDTO.getType().equals("admin")){
            reserveService.deleteReserveDataByID(reserveDataDTO.getUserID());
            reserveService.registerData(reserveDataDTO);
            reserveService.convertDateFormat(reserveDataDTO);
            model.addAttribute("who","관리자");
            model.addAttribute("datas",reserveService.getReserveList());
        }
        else{
            reserveDataDTO.setUserID(userDTO.getId());
            reserveService.deleteReserveDataByID(userDTO.getId());
            reserveService.registerData(reserveDataDTO);
            reserveService.convertDateFormat(reserveDataDTO);
            model.addAttribute("data",reserveDataDTO);
            model.addAttribute("who","고객");
        }

        return RESERVE_CHECK_JSP;
    }


    @RequestMapping(value = "accept",method = RequestMethod.POST)
    @ResponseBody
    public String accept(@RequestParam("idid") String idid, @RequestParam("status") String status){
        if (status.equals("accept")) {
            reserveService.acceptReserve(idid);
            return "승인됨";
        }
        else {
            reserveService.rejectReserve(idid);
            return "거절됨";
        }
    }



    @RequestMapping("reserveReserveCheck")
    public String reserveCheck(Model model, HttpSession session) throws NullPointerException{
        UserDTO userDTO = (UserDTO)session.getAttribute("user");
        System.out.println(userDTO);
        try{
            ReserveDataDTO reserveDataDTO = reserveService.getReserveDataByID(userDTO.getId());
            //reserveService.convertDateFormat(reserveDataDTO);
            if(userDTO.getType().equals("admin")){
                model.addAttribute("who","관리자");
                model.addAttribute("datas",reserveService.getReserveList());
            }
            else{
                model.addAttribute("who","고객");
                model.addAttribute("data",reserveDataDTO);

            }
        }catch (NullPointerException e){
            model.addAttribute("who","방문자");
            return RESERVE_CHECK_JSP;
        }
        return RESERVE_CHECK_JSP;
    }
}
