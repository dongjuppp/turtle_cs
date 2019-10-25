package npclinic.cs.service.user;

import npclinic.cs.dto.user.UserTypeDTO;
import npclinic.cs.mapper.user.UserTypeMapper;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserTypeServiceImpl implements UserTypeService {

    private UserTypeMapper userTypeMapper;

    public UserTypeServiceImpl(UserTypeMapper userTypeMapper){
        this.userTypeMapper=userTypeMapper;
    }

    public UserTypeDTO getUserTypeByNumber(int typeNumber){
        return userTypeMapper.getUserTypeByNumber(typeNumber);
    }

    public List<UserTypeDTO> getAllUserType(){
        return userTypeMapper.getAllUserType();
    }
}
