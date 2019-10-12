package npclinic.cs.service.user;

import npclinic.cs.dto.UserDTO;
import npclinic.cs.mapper.UserMapper;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {

    private UserMapper userMapper;
    public UserService(UserMapper userMapper){
        this.userMapper=userMapper;
    }

    public List<UserDTO> getUserList(){
        return userMapper.getUserList();
    }
}
