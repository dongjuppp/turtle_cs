package npclinic.cs.service.menu;

import npclinic.cs.dto.menu.DropMenuDTO;
import npclinic.cs.mapper.menu.DropMenuMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DropMenuServiceImpl implements DropMenuService{

    private DropMenuMapper dropMenuMapper;

    @Autowired
    public DropMenuServiceImpl(DropMenuMapper dropMenuMapper){
        this.dropMenuMapper=dropMenuMapper;
    }
    public List<DropMenuDTO> getAllDropMenu(){
        return dropMenuMapper.getAllDropMenu();
    }
}
