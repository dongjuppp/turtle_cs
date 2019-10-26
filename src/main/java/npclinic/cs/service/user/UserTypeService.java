package npclinic.cs.service.user;

import npclinic.cs.dto.user.UserTypeDTO;

import java.util.List;

public interface UserTypeService {

    UserTypeDTO getUserTypeByNumber(int typeNumber);

    List<UserTypeDTO> getAllUserType();

}
