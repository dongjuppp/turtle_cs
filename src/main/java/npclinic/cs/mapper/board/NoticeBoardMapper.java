package npclinic.cs.mapper.board;

import npclinic.cs.dto.board.BoardDTO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import java.util.List;

@Mapper
public interface NoticeBoardMapper {

    @Select("SELECT * FROM notice_board WHERE category = #{category}")
    List<BoardDTO> getAllNoticeBoardByCategory(@Param("category") int category);

    @Select("SELECT * FROM notice_board WHERE id = #{id}")
    BoardDTO getBoardByid(@Param("id") int id);

}