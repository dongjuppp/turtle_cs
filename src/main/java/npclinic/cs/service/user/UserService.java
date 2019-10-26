package npclinic.cs.service.user;

import npclinic.cs.dto.user.UserDTO;

import java.util.List;


public interface UserService {
    List<UserDTO> getAllUser();
    public UserDTO getUser(String id);

}
