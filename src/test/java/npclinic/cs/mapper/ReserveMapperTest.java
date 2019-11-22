package npclinic.cs.mapper;

import npclinic.cs.dto.reserve.ReserveDataDTO;
import npclinic.cs.mapper.reserve.ReserveMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mock;
//import org.mybatis.spring.boot.test.autoconfigure.MybatisTest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.Date;
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


    // status가 정상적으로 변하는지 검사
    @Test
    @Transactional
    public void testReserveStatus(){
        ReserveDataDTO reserveDataDTO = new ReserveDataDTO();
        reserveDataDTO.setUserID("testId");
        reserveDataDTO.setSubject("test");
        reserveDataDTO.setDoctor("testDoctor");
        reserveDataDTO.setDate(new Date());
        reserveDataDTO.setMessage("testM");
        reserveDataDTO.setTime(13);
        reserveDataDTO.setStatus("waiting"); //초기 waiting으로 지정

        reserveMapper.registerData(reserveDataDTO);
        assertThat("waiting"
                .equals(reserveMapper.getReserveDataByID("testId")
                        .getStatus()));
        reserveMapper.accept("testId");

        // accept로 정상적으로 바뀌었는지 검사
        assertThat("accept"
                .equals(reserveMapper.getReserveDataByID("testId")
                        .getStatus()));

        reserveMapper.reject("testId"); // reject로 변환

        assertThat("reject"
                .equals(reserveMapper.getReserveDataByID("testId")
                        .getStatus()));
    }


    // 정상적으로 삭제가 되는지 검사
    @Test
    @Transactional
    public void testDeleteData(){
        List<ReserveDataDTO> before = reserveMapper.getReserveList();
        reserveMapper.deleteReserveDataByID("dongjuppp");
        List<ReserveDataDTO> after = reserveMapper.getReserveList();
        assertTrue(before.size() != after.size());

    }



    // 정상적으로 삽입이 되고있는지 테스트
    @Test
    @Transactional // 이 Annotation이 test후 rollback을 해줌
    public void insertDataTest(){
        List<ReserveDataDTO> before = reserveMapper.getReserveList();
        ReserveDataDTO reserveDataDTO = new ReserveDataDTO();
        reserveDataDTO.setUserID("testId");
        reserveDataDTO.setSubject("test");
        reserveDataDTO.setDoctor("testDoctor");
        reserveDataDTO.setDate(new Date());
        reserveDataDTO.setMessage("testM");
        reserveDataDTO.setTime(13);
        reserveDataDTO.setStatus("test");
        reserveMapper.registerData(reserveDataDTO);
        List<ReserveDataDTO> after = reserveMapper.getReserveList();
        assertTrue(before.size() != after.size());
    }

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
