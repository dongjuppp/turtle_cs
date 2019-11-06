package npclinic.cs.service.reserve;

import npclinic.cs.dto.reserve.ReserveDataDTO;
import npclinic.cs.mapper.reserve.ReserveMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

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


    public ReserveDataDTO getReserveDataByID(String userID){
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy/mm/dd");
        ReserveDataDTO reserveDataDTO = reserveMapper.getReserveDataByID(userID);
        System.out.println(reserveDataDTO);
        return reserveMapper.getReserveDataByID(userID);
    }


    public List<ReserveDataDTO> getReserveList(){
        List<ReserveDataDTO> reserveDataDTOS = reserveMapper.getReserveList();
        for(ReserveDataDTO reserveDataDTO:reserveDataDTOS){
            convertDateFormat(reserveDataDTO);
        }
        return reserveDataDTOS;
    }


    public void deleteReserveDataByID(String userID){
        reserveMapper.deleteReserveDataByID(userID);
    }

    public void convertDateFormat(ReserveDataDTO reserveDataDTO){
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
        reserveDataDTO.setDataStr(sdf.format(reserveDataDTO.getDate()));
    }
}
