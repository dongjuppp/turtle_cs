package npclinic.cs.service.greeting;

import npclinic.cs.dto.greeting.DoctorDTO;
import java.util.List;

public interface DoctorService {
    public List<DoctorDTO> getAllDoctor();
}
