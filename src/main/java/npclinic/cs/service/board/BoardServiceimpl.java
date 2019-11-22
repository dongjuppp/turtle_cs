package npclinic.cs.service.board;

import npclinic.cs.dto.board.BoardDTO;
import npclinic.cs.mapper.board.BoardMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.swing.plaf.basic.BasicInternalFrameTitlePane;
import java.text.SimpleDateFormat;
import java.util.Date;
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
        List<BoardDTO> AllBoard =boardMapper.getAllBoardByDropMenuId(dropMenuId);
        for(BoardDTO bdto : AllBoard) {
            bdto.setDateStr(formatDate(bdto.getDate()));
        }

        return AllBoard;
    }

    @Override
    public BoardDTO getBoard(int id) {
        BoardDTO boardData = boardMapper.getBoardById(id);
        boardData.setDateStr(formatDate(boardData.getDate()));
        return boardData;
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
    public void updateViews(int id, int views) { boardMapper.updateViews(id, views); }

    @Override
    public void deleteBoard(int id) {
        boardMapper.deleteBoard(id);
    }

    public static String formatDate(Date date){
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
        return sdf.format(date);
    }
}

