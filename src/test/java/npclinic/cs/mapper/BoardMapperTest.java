package npclinic.cs.mapper;

import npclinic.cs.dto.board.BoardDTO;
import npclinic.cs.mapper.board.BoardMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.transaction.annotation.Transactional;
import java.util.ArrayList;
import static junit.framework.TestCase.assertTrue;
import static org.assertj.core.api.Java6Assertions.assertThat;
import static org.hamcrest.Matchers.is;
import static org.hamcrest.Matchers.notNullValue;
import static org.junit.Assert.assertThat;

@RunWith(SpringRunner.class)
@SpringBootTest
public class BoardMapperTest {
    
    @Autowired
    BoardMapper boardMapper;

    @Test
    @Transactional
    public void testInsertBoard(){
        BoardDTO boardDTO = new BoardDTO();

        boardDTO.setWriter("testId");
        boardDTO.setTitle("test");
        boardDTO.setContent("test");
        boardDTO.setDropMenuId(17);
        boardDTO.setId(100);

        boardMapper.insertBoard(boardDTO);
        assertThat( boardMapper.getBoardById(100) != null);

    }

    @Test
    @Transactional
    public void testDeleteBoard(){
        boardMapper.deleteBoard(1);

        assertThat( boardMapper.getBoardById(1) == null);
    }

    @Test
    @Transactional
    public void testModifyBoard(){
        BoardDTO boardDTO = new BoardDTO();
        boardDTO = boardMapper.getBoardById(1);
        boardDTO.setTitle("modify_testing");
        boardMapper.updateBoard(boardDTO);

        assertTrue(boardMapper.getBoardById(1).getTitle().equals("modify_testing"));
    }

    @Test
    public void testGetAllBoardById(){
        // null 타입 검사
        assertThat(boardMapper.getAllBoardByDropMenuId(17),is(notNullValue()));

        // 반환값이 ArrayList 인지 검사
        assertTrue(boardMapper.getAllBoardByDropMenuId(17) instanceof ArrayList);

    }

    @Test
    public void testGetBoardById(){
        BoardDTO boardDTO = new BoardDTO();
        boardDTO.setWriter("dongju");
        boardDTO.setTitle("TESTING FREE BOARD 1");
        boardDTO.setContent("TEST CONTENT 1");
        boardDTO.setDropMenuId(17);
        boardDTO.setViews(10);

        assertTrue(boardDTO.equals(boardMapper.getBoardById(1)));
    }
}
