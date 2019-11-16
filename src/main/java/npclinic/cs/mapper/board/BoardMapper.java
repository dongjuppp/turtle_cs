package npclinic.cs.mapper.board;

import npclinic.cs.dto.board.BoardDTO;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface BoardMapper {

    @Select("SELECT * FROM board WHERE dropMenuId = #{drop_menu_id}")
    List<BoardDTO> getAllBoardByDropMenuId(@Param("drop_menu_id") int drop_menu_id);

    @Select("SELECT * FROM board WHERE id = #{id}")
    BoardDTO getBoardById(@Param("id") int id);

    @Insert("INSERT INTO board(title, content, writer, dropMenuId, views) VALUES (#{title}, #{content}, #{writer}, #{dropMenuId},  #{views})")
    void insertBoard(BoardDTO boardDTO);

    @Update("UPDATE board SET title=#{title}, content=#{content} WHERE id=#{id}")
    void updateBoard(BoardDTO boardDTO);

    @Delete("DELETE FROM board WHERE id = #{id}")
    void deleteBoard(@Param("id") int id);
}