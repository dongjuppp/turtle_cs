package npclinic.cs.service.board;

import npclinic.cs.dto.board.BoardDTO;

import java.util.List;

public interface BoardService {

    public List<BoardDTO> getAllBoardByCategory(int category);
    public BoardDTO getBoard(int id);
}
