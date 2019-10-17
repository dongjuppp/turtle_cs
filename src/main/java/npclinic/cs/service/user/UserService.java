package npclinic.cs.service.user;

import npclinic.cs.dto.UserDTO;
import org.springframework.stereotype.Service;

import java.util.List;


public interface UserService {
    List<UserDTO> getAllUser();
}
