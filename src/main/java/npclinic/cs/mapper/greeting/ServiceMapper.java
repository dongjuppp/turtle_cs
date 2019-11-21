package npclinic.cs.mapper.greeting;

import npclinic.cs.dto.greeting.ServiceDTO;
import org.apache.ibatis.annotations.*;
import java.util.List;

@Mapper
public interface ServiceMapper {
    @Select("SELECT * FROM service")
    List<ServiceDTO> getServiceList();
}
