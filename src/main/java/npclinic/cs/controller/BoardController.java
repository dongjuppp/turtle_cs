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


@Controller
public class BoardController {
    private BoardService boardService;
    private final String INTRODUCE_URL = "board/introduce";
    private final String VIEW_BOARD_URL = "board/view_board";
    private final String FREE_BOARD_URL = "board/free_board";
    private final String NOTICE_BOARD_URL = "board/notice_board";
    private final String BOARD_INSERT_URL = "board/insert_board";
    private final String BOARD_UPDATE_URL = "board/update_board";
    private final String BOARD_DELETE_URL = "board/delete_board";
    private final String Nnonsalary = "board/medi_info_board";
    private final String Zoster = "board/medi_info_board";
    private final String Arthritis = "board/medi_info_board";
    private final String Shingles = "board/medi_info_board";
    private final String Nerve = "board/medi_info_board";
    private final String Neck = "board/medi_info_board";

    @Autowired
    public BoardController(BoardService boardService){
        this.boardService = boardService;
    }

    @RequestMapping("communityPhoto")
    public String photo(){
        return INTRODUCE_URL;
    }

    @RequestMapping("communityFree")
    public String free(Model model, HttpSession session){
        UserDTO userDTO = (UserDTO) session.getAttribute("user");
        List<BoardDTO> boardDTO = boardService.getAllBoardByCategory(17);

        model.addAttribute("user", userDTO);
        model.addAttribute("board", boardDTO);
        model.addAttribute("dropMenuId", 17);
        return FREE_BOARD_URL;
    }

    @RequestMapping("communityNnotice")
    public String notice(Model model, HttpSession session){
        UserDTO userDTO = (UserDTO) session.getAttribute("user");
        List<BoardDTO> boardDTO = boardService.getAllBoardByCategory(16);

        model.addAttribute("user", userDTO);
        model.addAttribute("board", boardDTO);
        model.addAttribute("dropMenuId", 16);
        return NOTICE_BOARD_URL;
    }

    @RequestMapping("medicinfoNnonsalary")//9
    public String nonSalary(Model model){
        List<BoardDTO> boardDTO = boardService.getAllBoardByCategory(9);
        String titleName = boardService.getTitleName(boardDTO);

        model.addAttribute("titleName", titleName);
        model.addAttribute("data", boardDTO);
        return Nnonsalary;
    }
    @RequestMapping("medicinfoZoster") //8
    public String zoster(Model model){
        List<BoardDTO> boardDTO = boardService.getAllBoardByCategory(8);
        String titleName = boardService.getTitleName(boardDTO);

        model.addAttribute("titleName", titleName);
        model.addAttribute("data", boardDTO);
        return Zoster;
    }
    @RequestMapping("medicinfoArthritis")//7
    public String arthritis(Model model){
        List<BoardDTO> boardDTO = boardService.getAllBoardByCategory(7);
        String titleName = boardService.getTitleName(boardDTO);

        model.addAttribute("titleName", titleName);
        model.addAttribute("data", boardDTO);
        return Arthritis;
    }
    @RequestMapping("medicinfoShingles")//6
    public String shingles(Model model){
        List<BoardDTO> boardDTO = boardService.getAllBoardByCategory(6);
        String titleName = boardService.getTitleName(boardDTO);

        System.out.println(titleName);
        model.addAttribute("titleName", titleName);
        model.addAttribute("data", boardDTO);
        return Shingles;
    }
    @RequestMapping("medicinfoNerve")//5
    public String nerve(Model model){
        List<BoardDTO> boardDTO = boardService.getAllBoardByCategory(5);
        String titleName = boardService.getTitleName(boardDTO);

        model.addAttribute("titleName", titleName);
        model.addAttribute("data", boardDTO);
        return Nerve;
    }
    @RequestMapping("medicinfoNeck")//4
    public String neck(Model model){
        List<BoardDTO> boardDTO = boardService.getAllBoardByCategory(4);
        String titleName = boardService.getTitleName(boardDTO);

        model.addAttribute("titleName", titleName);
        model.addAttribute("data", boardDTO);
        return Neck;
    }


    @RequestMapping("/view_board")
    public String view(Model model, HttpServletRequest httpServletRequest){
        int ind = Integer.parseInt(httpServletRequest.getParameter("ind"));

        BoardDTO boardData =boardService.getBoard(ind);
        boardService.updateViews(ind, boardData.getViews());

        model.addAttribute("data", boardData);
        System.out.println("view access");
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
        boardService.updateBoard(boardDataDTO);

        if(boardDataDTO.getDropMenuId() == 16) return "redirect:communityNnotice";
        else if(boardDataDTO.getDropMenuId() == 17) return "redirect:communityFree";

        return INTRODUCE_URL;
    }

    @RequestMapping(value = "boardData", method = RequestMethod.POST)
    public String getBoardData(@ModelAttribute BoardDTO boardDataDTO, Model model, HttpSession httpSession){
        UserDTO userDTO = (UserDTO)httpSession.getAttribute("user");
        boardDataDTO.setWriter(userDTO.getId());

        boardService.insertBoard(boardDataDTO);

        if(boardDataDTO.getDropMenuId() == 16) return "redirect:communityNnotice";
        else if(boardDataDTO.getDropMenuId() == 17) return "redirect:communityFree";

        return INTRODUCE_URL;
    }

    @RequestMapping("/update_board")
    public String update(HttpServletRequest httpServletRequest, HttpSession httpSession, Model model){
        int id = Integer.parseInt(httpServletRequest.getParameter("ind"));
        BoardDTO boardDTO = boardService.getBoard(id);

        model.addAttribute("data", boardDTO);

        return BOARD_UPDATE_URL;
    }

    @RequestMapping("/delete_board")
    public String delete(@ModelAttribute BoardDTO boardDTO, HttpServletRequest httpServletRequest, HttpSession httpSession, Model model){
        UserDTO userDTO = (UserDTO)httpSession.getAttribute("user");
        int id = Integer.parseInt(httpServletRequest.getParameter("ind"));
        int drop_menu_id = Integer.parseInt(httpServletRequest.getParameter("drop_menu_id"));

        boardService.deleteBoard(id);

        if(drop_menu_id == 16) return "redirect:communityNnotice";
        else if(drop_menu_id == 17) return "redirect:communityFree";

        return INTRODUCE_URL;
    }
}
