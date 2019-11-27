package npclinic.cs.mapper;

import npclinic.cs.dto.paging.Criteria;
import npclinic.cs.dto.user.UserDTO;
import npclinic.cs.mapper.user.UserMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.transaction.annotation.Transactional;

import static junit.framework.TestCase.assertTrue;
import static org.junit.Assert.assertNotNull;

import java.util.Date;
import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
public class UserMapperTest {
    @Autowired
    UserMapper userMapper;

    @Test
    @Transactional
    public void getUserListTest(){
        List<UserDTO> userList = userMapper.getUserList();
        assertNotNull(userList);
    }

    @Test
    @Transactional
    public void insertUserTest(){
        List<UserDTO> before = userMapper.getUserList();

        UserDTO userDTO = new UserDTO();
        Date date = new Date();

        userDTO.setId("testId");
        userDTO.setPassword("testPassword");
        userDTO.setName("testName");
        userDTO.setGender("testGender");
        userDTO.setBirth("1999/01/01");
        userDTO.setType(2);
        userDTO.setEmail("test@gmail.com");
        userDTO.setPhone("01011112222");
        userDTO.setLast_login(date);
        userDTO.setReg_login(date);

        userMapper.insertUser(userDTO);
        List<UserDTO> after = userMapper.getUserList();

        assertTrue(before.size() != after.size());
    }

    @Test
    @Transactional
    public void getUserByIDTest(){
        UserDTO userDTO = new UserDTO();
        Date date = new Date();

        userDTO.setId("testId");
        userDTO.setPassword("testPassword");
        userDTO.setName("testName");
        userDTO.setGender("testGender");
        userDTO.setBirth("1999/01/01");
        userDTO.setType(2);
        userDTO.setEmail("test@gmail.com");
        userDTO.setPhone("01011112222");
        userDTO.setLast_login(date);
        userDTO.setReg_login(date);

        userMapper.insertUser(userDTO);

        UserDTO userById = userMapper.getUserByID("testId");

        assertNotNull(userById);
        assertTrue(userById.getId().equals("testId"));
    }

    @Test
    @Transactional
    public void getUserListByCriteria(){
        Criteria criteria = new Criteria();

        List<UserDTO> userList = userMapper.getUserListByCriteria(criteria);

        System.out.println(userList.size());
        assertTrue(userList.size() > 0);
    }

    @Test
    @Transactional
    public void updateUserTest(){
        UserDTO userDTO = new UserDTO();
        Date date = new Date();

        userDTO.setId("testId");
        userDTO.setPassword("testPassword");
        userDTO.setName("testName");
        userDTO.setGender("testGender");
        userDTO.setBirth("1999/01/01");
        userDTO.setType(2);
        userDTO.setEmail("test@gmail.com");
        userDTO.setPhone("01011112222");
        userDTO.setLast_login(date);
        userDTO.setReg_login(date);

        userMapper.insertUser(userDTO);

        String beforeName = userMapper.getUserByID("testId").getName();

        userDTO.setName("testOtherName");
        userMapper.updateUser(userDTO);

        String afterName = userMapper.getUserByID("testId").getName();

        assertTrue(!beforeName.equals(afterName));

    }




}
