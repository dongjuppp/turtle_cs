package npclinic.cs.service.board;

import npclinic.cs.dto.board.BoardDTO;

import java.util.List;

public interface BoardService {

    public List<BoardDTO> getAllBoardByCategory(int category);
    public BoardDTO getBoard(int id);
    public void insertBoard(BoardDTO boardDTO);
    public void updateBoard(BoardDTO boardDTO);
    public void deleteBoard(int id);
    public void updateViews(int id, int views);
    public String getTitleName(List<BoardDTO> data);
}
