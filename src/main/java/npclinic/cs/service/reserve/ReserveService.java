package npclinic.cs.service.reserve;

import npclinic.cs.dto.reserve.ReserveDataDTO;

import java.util.List;

public interface ReserveService {

    void registerData(ReserveDataDTO reserveDataDTO);

    ReserveDataDTO getReserveDataByID(String userID);

    public List<ReserveDataDTO> getReserveList();
}
