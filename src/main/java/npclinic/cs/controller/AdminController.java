package npclinic.cs.controller;

import com.google.gson.Gson;
import npclinic.cs.dto.paging.Criteria;
import npclinic.cs.dto.paging.PageMaker;
import npclinic.cs.dto.user.UserDTO;
import npclinic.cs.service.common.ExcelService;
import npclinic.cs.service.user.UserService;
import org.aspectj.asm.IModelFilter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
public class AdminController {

    private UserService userService;
    private ExcelService excelService;

    @Autowired
    public AdminController(UserService userService,ExcelService excelService){
        this.excelService = excelService;
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
        model.addAttribute("id", id);


        return "admin/info_edit";
    }

    @RequestMapping("/info_edit_finish")
    public String updateUser(@ModelAttribute("userDTO") UserDTO userDTO, Model model, @RequestParam("id") String id, Criteria cri ){
        PageMaker pageMaker = new PageMaker();
        pageMaker.setCri(cri);
        pageMaker.setTotalCount(userService.countUserList());

        userDTO.setId(id);
        userService.updateUser(userDTO);

        ArrayList<UserDTO> userList = null;
        userList = (ArrayList<UserDTO>) userService.getUserListByCriteria(cri);

        model.addAttribute("user_list", userList);
        model.addAttribute("page_maker", pageMaker);

        return "admin/user_info";
    }

    @RequestMapping("/user_add")
    public String add(Model model){


        return "admin/user_add";
    }

    @RequestMapping("excelUser")
    public String excelUser(HttpServletRequest request, HttpServletResponse response){
        String path = request.getServletContext().getRealPath("/excelFile");
        String[] format = {"아이디","이름","생년월일","이메일","성벌","전화번호"};
        String fileName = "고객명단";
        List<UserDTO> tmp = userService.getAllUser();
        ArrayList<ArrayList<String>> list = new ArrayList<>();
        for(UserDTO userDTO:tmp){
            list.add(userDTO.toArrayList());
        }
        return excelService.deliveExcel(excelService.writeExcel(format,list,path,fileName),
                path,request,response);
    }

}
