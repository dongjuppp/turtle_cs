package npclinic.cs.controller;

import com.google.gson.Gson;
import npclinic.cs.dto.paging.Criteria;
import npclinic.cs.dto.paging.PageMaker;
import npclinic.cs.dto.user.UserDTO;
import npclinic.cs.service.user.UserService;
import org.aspectj.asm.IModelFilter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;

@Controller
public class AdminController {

    private UserService userService;

    @Autowired
    public AdminController(UserService userService){
        this.userService=userService;
    }


    @Autowired
    Gson gson;

    @RequestMapping("/user_manage")
    public String manage(Model model, Criteria cri){

        PageMaker pageMaker = new PageMaker();
        pageMaker.setCri(cri);
        pageMaker.setTotalCount(userService.countUserList());

        ArrayList<UserDTO> userList = null;
        userList = (ArrayList<UserDTO>) userService.getUserListByCriteria(cri);

        model.addAttribute("user_list", userList);
        model.addAttribute("page_maker", pageMaker);

        return "admin/user_info";
    }

    @RequestMapping("/info_edit")
    public String edit(Model model,@RequestParam(value = "id") String id){

        UserDTO userDTO = new UserDTO();
        userDTO = userService.getUser(id);

        model.addAttribute("userDetail", userDTO);


        return "admin/info_edit";
    }

    @RequestMapping("/info_edit_finish")
    public String updateUser(@ModelAttribute("userDTO") UserDTO userDTO, HttpSession httpSession, Model model ){
        userDTO.setId(((UserDTO)httpSession.getAttribute("user")).getId());
        userService.updateUser(userDTO);

        ArrayList<UserDTO> userList = null;
        userList = (ArrayList<UserDTO>) userService.getAllUser();

        model.addAttribute("user_list", userList);

        return "admin/user_info";
    }

    @RequestMapping("/user_add")
    public String add(Model model){


        return "admin/user_add";
    }

}
