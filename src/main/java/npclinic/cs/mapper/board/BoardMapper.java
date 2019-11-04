package npclinic.cs.mapper.board;

import npclinic.cs.dto.board.BoardDTO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.ArrayList;
import java.util.List;

@Mapper
public interface BoardMapper {

    @Select("SELECT * FROM board WHERE dropMenuId = #{drop_menu_id}")
    List<BoardDTO> getAllBoardByDropMenuId(@Param("drop_menu_id") int drop_menu_id);

    @Select("SELECT * FROM board WHERE id = #{id}")
    BoardDTO getBoardByid(@Param("id") int id);

}