package npclinic.cs.service.reserve;

import npclinic.cs.dto.reserve.ReserveDataDTO;
import npclinic.cs.mapper.reserve.ReserveMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.DateFormat;
import java.text.SimpleDateFormat;

@Service
public class ReserveServiceImpl implements ReserveService {

    private ReserveMapper reserveMapper;

    @Autowired
    public ReserveServiceImpl(ReserveMapper reserveMapper){
        this.reserveMapper=reserveMapper;
    }

    public void registerData(ReserveDataDTO reserveDataDTO){
        reserveMapper.registerData(reserveDataDTO);
    }
}