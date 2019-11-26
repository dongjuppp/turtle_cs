package npclinic.cs.mapper;

import junit.framework.TestCase;
import npclinic.cs.dto.user.UserDTO;
import npclinic.cs.dto.user.UserTypeDTO;
import npclinic.cs.mapper.user.UserMapper;
import npclinic.cs.mapper.user.UserTypeMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.transaction.annotation.Transactional;

import static junit.framework.TestCase.assertTrue;
import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import java.util.Date;
import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
public class UsertypeMapperTest {

    @Autowired
    UserTypeMapper usertypeMapper;
    UserMapper userMapper;

    @Test
    @Transactional
    public void getAllUserTypeTest() {

        List<UserTypeDTO> usertypeList = usertypeMapper.getAllUserType();
        assertNotNull(usertypeList);
    }





}
