package npclinic.cs.service.reserve;

import npclinic.cs.dto.reserve.ReserveDataDTO;

import java.util.List;

public interface ReserveService {

    void registerData(ReserveDataDTO reserveDataDTO);

    ReserveDataDTO getReserveDataByID(String userID);

    List<ReserveDataDTO> getReserveList();

    void deleteReserveDataByID(String userID);

    void convertDateFormat(ReserveDataDTO reserveDataDTO);
}
