package npclinic.cs.mapper.menu;

import npclinic.cs.dto.menu.HeaderMenuDTO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface HeaderMenuMapper {
    
    @Select("SELECT * FROM header_menu")
    List<HeaderMenuDTO> getAllHeaderMenu();
}
