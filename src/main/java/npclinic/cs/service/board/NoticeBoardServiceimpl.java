package npclinic.cs.service.board;

import npclinic.cs.dto.board.BoardDTO;
import npclinic.cs.mapper.board.NoticeBoardMapper;

import java.util.List;

public class NoticeBoardServiceimpl implements NoticeBoardService {
    private NoticeBoardMapper noticeBoardMapper;

    public NoticeBoardServiceimpl(NoticeBoardMapper noticeBoardMapper){
        this.noticeBoardMapper=noticeBoardMapper;
    }

    @Override
    public List<BoardDTO> getAllNoticeBoardByCategory(int category) {
        return noticeBoardMapper.getAllNoticeBoardByCategory(category);
    }

    @Override
    public BoardDTO getBoard(int id) { return noticeBoardMapper.getBoardByid(id);}
}
