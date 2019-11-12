package npclinic.cs.mapper.reserve;

import npclinic.cs.dto.reserve.ReserveDataDTO;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface ReserveMapper {

    @Insert("INSERT INTO reserve_data VALUES(#{userID}, #{doctor}, #{subject},#{date},#{message},#{time},'waiting')")
    void registerData(ReserveDataDTO reserveDataDTO);

    //날자와 예약 시간이 제일 최근 날짜인것으로 가져옴 날짜, 시간이 같아도 1개만 가져옴
    //한 유저당 한개의 데이터만 있겠지만 혹시 모르니 최대한 안전하게 이렇게 하자
    @Select("SELECT * FROM reserve_data WHERE userID=#{userID}  ORDER BY DATE,time DESC LIMIT 1;")
    ReserveDataDTO getReserveDataByID(String userId);



    @Select("SELECT * FROM reserve_data")
    List<ReserveDataDTO> getReserveList();

    @Delete("DELETE FROM reserve_data WHERE userID=#{userID}")
    void deleteReserveDataByID(String userID);

    @Update("UPDATE reserve_data SET status = 'accept' WHERE userID=#{userID}")
    void accept(String userID);

    @Update("UPDATE reserve_data SET status = 'reject' WHERE userID=#{userID}")
    void reject(String userID);
}
