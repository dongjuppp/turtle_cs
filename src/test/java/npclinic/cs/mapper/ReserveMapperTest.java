package npclinic.cs.mapper;

import npclinic.cs.dto.reserve.ReserveDataDTO;
import npclinic.cs.mapper.reserve.ReserveMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mock;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.ArrayList;
import java.util.List;

import static junit.framework.TestCase.assertTrue;
import static org.assertj.core.api.Java6Assertions.assertThat;
import static org.assertj.core.internal.bytebuddy.matcher.ElementMatchers.is;
import static org.hamcrest.CoreMatchers.nullValue;
import static org.mockito.Mockito.when;

import static org.hamcrest.Matchers.anything;
import static org.hamcrest.Matchers.notNullValue;
import static org.hamcrest.Matchers.nullValue;
import static org.junit.Assert.assertThat;
import static org.hamcrest.Matchers.is;

@RunWith(SpringRunner.class)
@SpringBootTest
public class ReserveMapperTest {
    
    @Autowired
    ReserveMapper reserveMapper;

    @Test
    public void getDataListTest(){

        // null 타입 검사
        assertThat(reserveMapper.getReserveList(),is(notNullValue()));

        // 반환값이 ArrayList 인지 검사
        assertTrue(reserveMapper.getReserveList() instanceof ArrayList);

    }

    /*
    * userID 에 맞는 결과 값이 나오는지 test*/
    @Test
    public void getDateByUserTest(){
        ReserveDataDTO reserveDataDTO = new ReserveDataDTO();
        reserveDataDTO.setUserID("dongjuppp");
        reserveDataDTO.setDoctor("전동병");
        reserveDataDTO.setSubject("목/허리디스크(비수술)");

        assertTrue(reserveDataDTO.equals(reserveMapper.getReserveDataByID("dongjuppp")));
    }
}
