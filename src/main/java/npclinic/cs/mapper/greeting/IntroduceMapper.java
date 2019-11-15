package npclinic.cs.mapper.greeting;

import npclinic.cs.dto.greeting.IntroduceDTO;
import org.apache.ibatis.annotations.*;
import java.util.List;

public interface IntroduceMapper {
    @Select("SELECT * FROM introduce WHERE id=#{id}")
    IntroduceDTO getIntroduceByID(@Param("id") String id);
}
