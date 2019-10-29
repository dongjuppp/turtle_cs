package npclinic.cs.mapper.user;

import npclinic.cs.dto.user.UserDTO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

/*
이 인터페이스를 @Mapper로 등록하여 마이바티스 Mapper로 등록
DbConfig에서  mapper 패키지를 스캔해서 @Mapper가 붙은 인터페이스를 자동으로 찾아냄
이 Mapper에 추상 메서드로 쿼리문을 작성함
select, insert, delete, update등 DML문은 모두 @를 붙혀서 사용
 */

@Mapper
public interface UserMapper {

    @Select("SELECT * FROM user")
    List<UserDTO> getUserList();

    //쿼리문에 변수가 필요하다면 아래와 같이 #{}안에 변수를 정하고
    //추상 메서드의 매개변수에 @Paran으로 변수를 준다
    @Select("SELECT * FROM user WHERE id=#{id}")
    UserDTO getUserByID(@Param("id") String id);

    @Select("SELECT * FROM user WHERE isVip=1")
    List<UserDTO> getVipUserList();






}
