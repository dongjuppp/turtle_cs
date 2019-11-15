package npclinic.cs.service.user;

import npclinic.cs.dto.paging.Criteria;
import npclinic.cs.dto.user.UserDTO;
import npclinic.cs.mapper.user.UserMapper;
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
    public List<UserDTO> getUserListByCriteria(Criteria criteria){
        return userMapper.getUserListByCriteria(criteria);
    }

    @Override
    public int countUserList(){
        return userMapper.countUserList();
    }

    @Override
    public UserDTO getUser(String id){
        return userMapper.getUserByID(id);
    }

    @Override
    public void insertUser(UserDTO userDTO){
        userMapper.insertUser(userDTO);
    }

    @Override
    public void updateUser(UserDTO userDTO){
        userMapper.updateUser(userDTO);
    }



}
