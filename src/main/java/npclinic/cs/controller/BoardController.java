package npclinic.cs.controller;

import npclinic.cs.dto.board.BoardDTO;
import npclinic.cs.service.board.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import java.util.List;


/*
게시판 컨트롤러
num을 GET방식으로 받아 어떤 게시판인지 구분
 */
@Controller
public class BoardController {
    private BoardService boardService;
    private final String INTRODUCE_URL = "board/introduce";
    private final String BOARD_WRITE_URL = "board/insert";

    @Autowired
    public BoardController(BoardService boardService){
        this.boardService = boardService;
    }

    @RequestMapping("/free_board")
    public String freeBoard(Model model){
        System.out.println("자유게시판 board");

        List<BoardDTO> boardDTO = boardService.getAllBoardByCategory(17);
        for(BoardDTO bdto : boardDTO){
            System.out.println(bdto.getTitle());
        }

        model.addAttribute("board", boardDTO);

        return "board/free_board";
    }

    @RequestMapping("/introduce")
    public String introduce(Model model){
        System.out.println("공지사항 board");
        return "board/introduce";
    }

    @RequestMapping("/medicinfo") //주소
    public String mediInfo(){
        System.out.println("진료정보 board");
        return "board/introduce"; // jsp파일 경로,이름
    }
}
