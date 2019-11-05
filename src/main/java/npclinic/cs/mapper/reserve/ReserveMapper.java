package npclinic.cs.mapper.reserve;

import npclinic.cs.dto.reserve.ReserveDataDTO;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface ReserveMapper {

    @Insert("INSERT INTO reserve_data VALUES(#{userID}, #{doctor}, #{subject},#{date},#{message},#{time})")
    void registerData(ReserveDataDTO reserveDataDTO);

    @Select("SELECT * FROM reserve_data WHERE userID=#{userID}")
    ReserveDataDTO getReserveDataByID(String userId);

    @Select("SELECT * FROM reserve_data")
    List<ReserveDataDTO> getReserveList();
}
