package npclinic.cs.service.menu;

import npclinic.cs.dto.menu.HeaderMenuDTO;
import npclinic.cs.mapper.menu.HeaderMenuMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class HeaderMenuServiceImpl implements HeaderMenuService {
    
    private HeaderMenuMapper headerMenuMapper;
    
    @Autowired
    public HeaderMenuServiceImpl(HeaderMenuMapper headerMenuMapper){
        this.headerMenuMapper=headerMenuMapper;
    }
    
    public List<HeaderMenuDTO> getAllHeaderMenu(){
        return headerMenuMapper.getAllHeaderMenu();
    }
}
