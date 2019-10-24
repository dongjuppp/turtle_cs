package npclinic.cs.service.etc;

import npclinic.cs.dto.etc.HospitalInfoDTO;
import npclinic.cs.mapper.etc.HospitalInfoMapper;
import org.springframework.stereotype.Service;

@Service
public class HospitalInfoServiceImpl implements HospitalInfoService{

    private HospitalInfoMapper hospitalInfoMapper;

    public HospitalInfoServiceImpl(HospitalInfoMapper hospitalInfoMapper){
        this.hospitalInfoMapper=hospitalInfoMapper;
    }

    public HospitalInfoDTO getHospitalInfo(){
        return hospitalInfoMapper.getHospitalInfo();
    }
}
