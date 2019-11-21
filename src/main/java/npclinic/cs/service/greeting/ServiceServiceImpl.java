package npclinic.cs.service.greeting;

import npclinic.cs.dto.greeting.ServiceDTO;
import npclinic.cs.mapper.greeting.ServiceMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Qualifier("NormalServiceService")
public class ServiceServiceImpl implements ServiceService {
    private ServiceMapper serviceMapper;

    public ServiceServiceImpl(ServiceMapper serviceMapper){
        this.serviceMapper = serviceMapper;
    }

    @Override
    public List<ServiceDTO> getAllService(){
        return serviceMapper.getServiceList();
    }
}
