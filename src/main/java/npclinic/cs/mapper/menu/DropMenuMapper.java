package npclinic.cs.mapper.menu;

import npclinic.cs.dto.menu.DropMenuDTO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface DropMenuMapper {

    @Select("SELECT * FROM drop_menu")
    List<DropMenuDTO> getAllDropMenu();
}
