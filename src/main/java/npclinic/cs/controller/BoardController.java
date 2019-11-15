package npclinic.cs.controller;

import npclinic.cs.dto.board.BoardDTO;
import npclinic.cs.dto.user.UserDTO;
import npclinic.cs.service.board.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
    private final String NOTICE_BOARD_URL = "board/notice_board";
    private final String MEDI_INFO_BOARD_URL = "board/medi_info_board";
    private final String BOARD_INSERT_URL = "board/insert_board";
    private final String BOARD_UPDATE_URL = "board/update_board";
    private final String BOARD_DELETE_URL = "board/delete_board";


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
        List<BoardDTO> boardDTO = getAndLogBoard(17);
        model.addAttribute("board", boardDTO);
        return FREE_BOARD_URL;
    }

    @RequestMapping("communityNnotice")
    public String notice(Model model){
        List<BoardDTO> boardDTO = getAndLogBoard(16);
        model.addAttribute("board", boardDTO);
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

    /*
    @RequestMapping("introduceGreet")
    public String into(){
        System.out.println("introduce");
        return INTRODUCE_URL;
    }
     */

    @RequestMapping("/view_board")
    public String view(Model model){
        System.out.println("view board 페이지");
        model.addAttribute("data", boardService.getBoard(1));
        return VIEW_BOARD_URL;
    }
    @RequestMapping("/insert_board")
    public String insert(HttpSession session, Model model){
        System.out.println("insert board 페이지");
        UserDTO userDTO = (UserDTO) session.getAttribute("user");

        if(userDTO != null){
            model.addAttribute("writer", userDTO.getName());
            model.addAttribute("id", userDTO.getId());
            return BOARD_INSERT_URL;
        }

        return FREE_BOARD_URL;
    }

    @RequestMapping(value = "boardData", method = RequestMethod.POST)
    public String getBoardData(@ModelAttribute BoardDTO boardDataDTO, Model model, HttpSession httpSession){
        UserDTO userDTO = (UserDTO)httpSession.getAttribute("user");
        boardDataDTO.setBoardUserId(userDTO.getId());

        boardService.insertBoard(boardDataDTO);

        model.addAttribute("data",boardService);
        model.addAttribute("who","고객");
        if(boardDataDTO.getDropMenuId() == 16) return NOTICE_BOARD_URL;
        else if(boardDataDTO.getDropMenuId() == 17) return FREE_BOARD_URL;
        return INTRODUCE_URL;
    }

    @RequestMapping("/update_board")
    public String update(HttpSession session, Model model){
        System.out.println("update board 페이지");

        return INTRODUCE_URL;
    }

    @RequestMapping("/delete_board")
    public String delete(HttpSession session, Model model){
        System.out.println("delete board 페이지");

        return INTRODUCE_URL;
    }

    private List<BoardDTO> getAndLogBoard(int id) {
        List<BoardDTO> boardDTO = boardService.getAllBoardByCategory(id);

        for(BoardDTO bdto : boardDTO) {
            System.out.println(bdto.getTitle());
        }

        return boardDTO;
    }

}
