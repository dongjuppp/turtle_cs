package npclinic.cs.mapper.greeting;

import npclinic.cs.dto.greeting.DoctorDTO;
import org.apache.ibatis.annotations.*;
import java.util.List;

@Mapper
public interface DoctorMapper {

    @Select("SELECT * FROM doctor")
    List<DoctorDTO> getDoctorList();
}
