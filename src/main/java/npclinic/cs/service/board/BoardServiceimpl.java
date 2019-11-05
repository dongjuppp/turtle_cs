package npclinic.cs.service.board;

import npclinic.cs.dto.board.BoardDTO;
import npclinic.cs.mapper.board.BoardMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class BoardServiceimpl implements BoardService {
    private BoardMapper boardMapper;

    @Autowired
    public BoardServiceimpl(BoardMapper boardMapper){
        this.boardMapper=boardMapper;
    }

    @Override
    public List<BoardDTO> getAllBoardByCategory(int dropMenuId) {
        return boardMapper.getAllBoardByDropMenuId(dropMenuId);
    }

    @Override
    public BoardDTO getBoard(int id) {
        return boardMapper.getBoardById(id);
    }

    @Override
    public void insertBoard(BoardDTO boardDTO) {
        boardMapper.insertBoard(boardDTO);
    }

    @Override
    public void updateBoard(BoardDTO boardDTO) {
        boardMapper.updateBoard(boardDTO);
    }

    @Override
    public void deleteBoard(BoardDTO boardDTO) {
        boardMapper.deleteBoard(boardDTO);
    }
}

