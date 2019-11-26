package npclinic.cs.mapper.user;

import npclinic.cs.dto.user.UserTypeDTO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface UserTypeMapper {

    @Select("SELECT * FROM user_type WHERE typeNumber=#{typeNumber}")
    UserTypeDTO getUserTypeByNumber(@Param("typeNumber") int typeNumber);

    @Select("SELECT * FROM user_type")
    List<UserTypeDTO> getAllUserType();

}
