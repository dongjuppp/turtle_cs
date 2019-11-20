package npclinic.cs.service;

import npclinic.cs.dto.reserve.ReserveDataDTO;
import npclinic.cs.mapper.reserve.ReserveMapper;
import npclinic.cs.service.reserve.ReserveService;
import npclinic.cs.service.reserve.ReserveServiceImpl;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mock;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.ArrayList;
import java.util.Date;

import static org.assertj.core.api.Java6Assertions.assertThat;
import static org.assertj.core.internal.bytebuddy.matcher.ElementMatchers.is;
import static org.mockito.ArgumentMatchers.isNotNull;
import static org.mockito.Mockito.when;
import static org.hamcrest.Matchers.anything;
import static org.hamcrest.Matchers.notNullValue;
import static org.hamcrest.Matchers.nullValue;
import static org.junit.Assert.assertThat;
import static org.hamcrest.Matchers.is;

@RunWith(SpringRunner.class)
@SpringBootTest

public class ReserveServiceTest {

    @Mock
    ReserveMapper reserveMapper;



    /*
    * 날짜 변환이 제대로 되었는지 검사*/
    @Test
    public void testConvertDate(){
        ReserveDataDTO reserveDataDTO1 = new ReserveDataDTO();
        ReserveDataDTO reserveDataDTO2 = new ReserveDataDTO();
        ReserveDataDTO reserveDataDTO3 = new ReserveDataDTO();
        reserveDataDTO1.setDate(new Date());
        reserveDataDTO2.setDate(new Date());
        reserveDataDTO3.setDate(new Date());

        ArrayList<ReserveDataDTO> reserveDataDTOS = new ArrayList<>();
        reserveDataDTOS.add(reserveDataDTO1);
        reserveDataDTOS.add(reserveDataDTO2);
        reserveDataDTOS.add(reserveDataDTO3);

        // reserveMapper mock객체 정의
        when(reserveMapper.getReserveList()).thenReturn(reserveDataDTOS);

        // reserveService에 reserveMapper mock객체를 의존 주입
        ReserveService reserveService = new ReserveServiceImpl(reserveMapper);

        for(ReserveDataDTO reserveDataDTO:reserveService.getReserveList()){
            assertThat(reserveDataDTO.getDataStr(), is(notNullValue()));
        }
    }



}
