package npclinic.cs.service.user;

import npclinic.cs.dto.user.UserDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Qualifier("NormalUserService") //이게 UserService를 구현한 구현체의 이름이 된다.
public class UserServiceImpl implements UserService {

    private UserMapper userMapper;

    public UserServiceImpl(UserMapper userMapper){
        this.userMapper=userMapper;
    }

    @Override
    public List<UserDTO> getAllUser(){
        return userMapper.getUserList();
    }

    @Override
    public UserDTO getUser(String id){
        return userMapper.getUserByID(id);
    }
}
