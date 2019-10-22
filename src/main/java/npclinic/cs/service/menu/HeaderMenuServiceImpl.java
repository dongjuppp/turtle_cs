package npclinic.cs.service.menu;

import npclinic.cs.dto.menu.DropMenuDTO;
import npclinic.cs.dto.menu.HeaderMenuDTO;
import npclinic.cs.mapper.menu.HeaderMenuMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class HeaderMenuServiceImpl implements HeaderMenuService {
    
    private HeaderMenuMapper headerMenuMapper;
    private DropMenuService dropMenuService;
    
    @Autowired
    public HeaderMenuServiceImpl(HeaderMenuMapper headerMenuMapper,
                                 DropMenuService dropMenuService){
        this.headerMenuMapper=headerMenuMapper;
        this.dropMenuService=dropMenuService;
    }
    
    public List<HeaderMenuDTO> getAllHeaderMenu(){
        List<HeaderMenuDTO> result = headerMenuMapper.getAllHeaderMenu();
        List<DropMenuDTO> list = dropMenuService.getAllDropMenu();
        int index=0;
        for(HeaderMenuDTO headerMenuDTO:result){
            headerMenuDTO.setDropMenus(new ArrayList<>());
            while(index<list.size()){
                if(headerMenuDTO.getOrderNum() == list.get(index).getOrderNum()){
                    headerMenuDTO.getDropMenus().add(list.get(index));
                }
                else{
                    break;
                }
                index++;
            }
        }
        return result;
    }
}
