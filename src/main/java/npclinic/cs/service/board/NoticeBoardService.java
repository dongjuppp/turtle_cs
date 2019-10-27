package npclinic.cs.service.board;

import npclinic.cs.dto.board.BoardDTO;

import java.util.List;

public interface NoticeBoardService {

    public List<BoardDTO> getAllNoticeBoardByCategory(int category);
    public BoardDTO getBoard(int id);
}
