package npclinic.cs.controller;

import npclinic.cs.dto.board.BoardDTO;
import npclinic.cs.dto.user.UserDTO;
import npclinic.cs.service.board.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
    public String free(){
        return INTRODUCE_URL;
    }
    @RequestMapping("communityNotice")
    public String notice(){
        return INTRODUCE_URL;
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
    @RequestMapping("introduceGreet")
    public String into(){
        System.out.println("introduce");
        return INTRODUCE_URL;
    }

    /////////////////////////////////////////////////////////////////////////////////////
    @RequestMapping("/free_board")
    public String freeBoard(Model model) {
        System.out.println("자유게시판 board");
        //int drop_menu_id = boardService.;     ## dropMenu의 drop_menu_id 번호를 가져와야한다. 17

        List<BoardDTO> boardDTO = getAndLogBoard(17);
        model.addAttribute("board", boardDTO);

        return FREE_BOARD_URL;
    }

    @RequestMapping("/notice_board")
    public String noticeBoard(Model model){
        System.out.println("공지사항 board");
        //int drop_menu_id = boardService.;     ## dropMenu의 drop_menu_id 번호를 가져와야한다. 16

        List<BoardDTO> boardDTO = getAndLogBoard(16);
        model.addAttribute("board", boardDTO);

        return NOTICE_BOARD_URL;
    }

/*drop_menu에 진료 정보 추가 해야함.
    @RequestMapping("/mediinfo_board") //주소
    public String mediInfoBoard(){
        System.out.println("진료정보 board");
        //int drop_menu_id = boardService.;     ## dropMenu의 drop_menu_id 번호를 가져와야한다. ??

        List<BoardDTO> boardDTO = get_and_log_board(??);
        model.addAttribute("board", boardDTO);

        return MEDIINFO; // jsp파일 경로,이름
    }
*/

    @RequestMapping("/view_board")
    public String view(Model model){
        System.out.println("view board 페이지");
        model.addAttribute("data", boardService.getBoard());
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
