package npclinic.cs.controller;

import javax.servlet.http.HttpSession;
import com.google.gson.Gson;
import npclinic.cs.dto.greeting.DoctorDTO;
import npclinic.cs.dto.greeting.IntroduceDTO;
import npclinic.cs.service.greeting.*;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class GreetingController {
    private IntroduceService introduceService;
    private DoctorService doctorService;
    private ServiceService serviceService;
    private Gson gson;

    @Autowired
    public GreetingController(IntroduceService introduceService, DoctorService doctorService, ServiceService serviceService, Gson gson){
        this.introduceService = introduceService;
        this.doctorService = doctorService;
        this.serviceService = serviceService;
        this.gson = gson;
    }

    @RequestMapping("/introduceGreet")
    public String greetingPage(Model model){
        model.addAttribute("doctors", doctorService.getAllDoctor());
        model.addAttribute("introduce", introduceService.getIntroduce(1));

        return "greeting/greeting_page";
    }

    @RequestMapping("introduceLook")
    public String lookPage(Model model){
        model.addAttribute("services", serviceService.getAllService());
        model.addAttribute("introduce", introduceService.getIntroduce(2));

        return "greeting/greeting_service";
    }

}
