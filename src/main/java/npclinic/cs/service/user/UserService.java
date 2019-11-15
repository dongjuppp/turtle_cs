package npclinic.cs.service.user;

import npclinic.cs.dto.paging.Criteria;
import npclinic.cs.dto.user.UserDTO;

import java.util.List;


public interface UserService {
    public List<UserDTO> getAllUser();
    public List<UserDTO> getUserListByCriteria(Criteria criteria);
    public UserDTO getUser(String id);
    public void insertUser(UserDTO userDTO);
    public void updateUser(UserDTO userDTO);
}
