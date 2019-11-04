package npclinic.cs.service.board;

import npclinic.cs.dto.board.BoardDTO;
import npclinic.cs.mapper.board.BoardMapper;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class BoardServiceimpl implements BoardService {
    private BoardMapper noticeBoardMapper;

    public BoardServiceimpl(BoardMapper noticeBoardMapper){
        this.noticeBoardMapper=noticeBoardMapper;
    }

    @Override
    public List<BoardDTO> getAllBoardByCategory(int dropMenuId) {
        return noticeBoardMapper.getAllBoardByDropMenuId(dropMenuId);
    }

    @Override
    public BoardDTO getBoard(int id) { return noticeBoardMapper.getBoardByid(id);}


}
