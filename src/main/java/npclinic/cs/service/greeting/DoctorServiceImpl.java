package npclinic.cs.service.greeting;

import npclinic.cs.dto.greeting.DoctorDTO;
import npclinic.cs.mapper.greeting.DoctorMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Qualifier("NormalDoctorService")
public class DoctorServiceImpl implements DoctorService {
    private DoctorMapper doctorMapper;

    public DoctorServiceImpl(DoctorMapper doctorMapper){
        this.doctorMapper = doctorMapper;
    }

    @Override
    public List<DoctorDTO> getAllDoctor(){
        return doctorMapper.getDoctorList();
    }
}
