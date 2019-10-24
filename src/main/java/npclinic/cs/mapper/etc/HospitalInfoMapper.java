package npclinic.cs.mapper.etc;

import npclinic.cs.dto.etc.HospitalInfoDTO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface HospitalInfoMapper {

    @Select("SELECT * FROM hospital_info")
    HospitalInfoDTO getHospitalInfo();
}
