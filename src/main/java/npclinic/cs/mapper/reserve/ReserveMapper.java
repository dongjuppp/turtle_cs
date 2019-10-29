package npclinic.cs.mapper.reserve;

import npclinic.cs.dto.reserve.ReserveDataDTO;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ReserveMapper {

    @Insert("INSERT INTO reserve_data VALUES(#{userID}, #{doctor}, #{subject},#{date},#{message})")
    void registerData(ReserveDataDTO reserveDataDTO);
}
