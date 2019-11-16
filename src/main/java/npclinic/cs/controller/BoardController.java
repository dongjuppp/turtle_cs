package npclinic.cs.controller;

import npclinic.cs.dto.board.BoardDTO;
import npclinic.cs.dto.user.UserDTO;
import npclinic.cs.service.board.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;


/*
게시판 컨트롤러
num을 GET방식으로 받아 어떤 게시판인지 구분
 */
@Controller
public class BoardController {
    private BoardService boardService;
    private final String INTRODUCE_URL = "board/introduce";
    private final String VIEW_BOARD_URL = "board/view_board";
    private final String FREE_BOARD_URL = "board/free_board";
    private final String FREE_BOARD_REDIRECT_URL = "communityFree";
    private final String NOTICE_BOARD_URL = "board/notice_board";
    private final String MEDI_INFO_BOARD_URL = "board/medi_info_board";
    private final String BOARD_INSERT_URL = "board/insert_board";
    private final String BOARD_UPDATE_URL = "board/update_board";
    private final String BOARD_DELETE_URL = "board/delete_board";
    private final String Nnonsalary = "board/";
    private final String Zoster = "board/";
    private final String Arthritis = "board/";
    private final String shingles = "board/";
    private final String nerve = "board/";
    private final String neck = "board/";

    @Autowired
    public BoardController(BoardService boardService){
        this.boardService = boardService;
    }

    @RequestMapping("communityPhoto")
    public String photo(){
        return INTRODUCE_URL;
    }

    @RequestMapping("communityFree")
    public String free(Model model){
        List<BoardDTO> boardDTO = boardService.getAllBoardByCategory(17);
        model.addAttribute("board", boardDTO);
        model.addAttribute("dropMenuId", 17);
        return FREE_BOARD_URL;
    }

    @RequestMapping("communityNnotice")
    public String notice(Model model){
        List<BoardDTO> boardDTO = boardService.getAllBoardByCategory(16);
        model.addAttribute("board", boardDTO);
        model.addAttribute("dropMenuId", 16);
        return NOTICE_BOARD_URL;
    }
    @RequestMapping("introduceNnonsalary")
    public String nonSalary(){
        return INTRODUCE_URL;
    }
    @RequestMapping("introduceZoster")
    public String zoster(){
        return INTRODUCE_URL;
    }
    @RequestMapping("introdueArthritis")
    public String arthritis(){
        return INTRODUCE_URL;
    }
    @RequestMapping("medicinfoShingles")
    public String shingles(){
        return INTRODUCE_URL;
    }
    @RequestMapping("medicinfoNerve")
    public String nerve(){
        return INTRODUCE_URL;
    }
    @RequestMapping("medicinfoNeck")
    public String neck(){
        return INTRODUCE_URL;
    }
    @RequestMapping("introduceTime")
    public String time(){
        return INTRODUCE_URL;
    }
    @RequestMapping("introduceLook")
    public String look(){
        return INTRODUCE_URL;
    }

    @RequestMapping("/view_board")
    public String view(Model model, HttpServletRequest httpServletRequest){
        int ind = Integer.parseInt(httpServletRequest.getParameter("ind"));
        BoardDTO boardData =boardService.getBoard(ind);

        System.out.println(boardData.getDropMenuId());
        model.addAttribute("data", boardData);

        return VIEW_BOARD_URL;
    }
    @RequestMapping("/insert_board")
    public String insert(HttpSession session, Model model, HttpServletRequest httpServletRequest){
        UserDTO userDTO = (UserDTO) session.getAttribute("user");
        int dropMenuId = Integer.parseInt(httpServletRequest.getParameter("dropMenuId"));

        if(userDTO != null){
            model.addAttribute("writer", userDTO.getName());
            model.addAttribute("id", userDTO.getId());
            model.addAttribute("dropMenuId", dropMenuId);

            return BOARD_INSERT_URL;
        }

        return INTRODUCE_URL;
    }

    @RequestMapping(value = "boardDataUpdate", method = RequestMethod.POST)
    public String updateBoardData(@ModelAttribute BoardDTO boardDataDTO, Model model, HttpSession httpSession){
        System.out.println("trying update!");

        boardService.updateBoard(boardDataDTO);

        if(boardDataDTO.getDropMenuId() == 16) return "redirect:communityNnotice";
        else if(boardDataDTO.getDropMenuId() == 17) return "redirect:communityFree";

        return INTRODUCE_URL;
    }

    @RequestMapping(value = "boardData", method = RequestMethod.POST)
    public String getBoardData(@ModelAttribute BoardDTO boardDataDTO, Model model, HttpSession httpSession){
        System.out.println("trying insert!");
        UserDTO userDTO = (UserDTO)httpSession.getAttribute("user");
        boardDataDTO.setWriter(userDTO.getId());

        boardService.insertBoard(boardDataDTO);

        if(boardDataDTO.getDropMenuId() == 16) return "redirect:communityNnotice";
        else if(boardDataDTO.getDropMenuId() == 17) return "redirect:communityFree";

        return INTRODUCE_URL;
    }

    @RequestMapping("/update_board")
    public String update(HttpServletRequest httpServletRequest, HttpSession httpSession, Model model){
        System.out.println("update board 페이지");

        int id = Integer.parseInt(httpServletRequest.getParameter("ind"));
        BoardDTO boardDTO = boardService.getBoard(id);

        model.addAttribute("data", boardDTO);

        return BOARD_UPDATE_URL;
    }

    @RequestMapping("/delete_board")
    public String delete(@ModelAttribute BoardDTO boardDTO, HttpServletRequest httpServletRequest, HttpSession httpSession, Model model){
        System.out.println();
        UserDTO userDTO = (UserDTO)httpSession.getAttribute("user");
        int id = Integer.parseInt(httpServletRequest.getParameter("ind"));
        int drop_menu_id = Integer.parseInt(httpServletRequest.getParameter("drop_menu_id"));

        boardService.deleteBoard(id);

        if(drop_menu_id == 16) return "redirect:communityNnotice";
        else if(drop_menu_id == 17) return "redirect:communityFree";

        return INTRODUCE_URL;
    }
}
