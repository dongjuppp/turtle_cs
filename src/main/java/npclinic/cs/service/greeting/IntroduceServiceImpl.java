package npclinic.cs.service.greeting;

import npclinic.cs.dto.greeting.IntroduceDTO;
import npclinic.cs.mapper.greeting.IntroduceMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service
@Qualifier("NormalIntroducService")
public class IntroduceServiceImpl implements IntroduceService {
    private IntroduceMapper introduceMapper;

    public IntroduceServiceImpl(IntroduceMapper introduceMapper){
        this.introduceMapper = introduceMapper;
    }

    @Override
    public IntroduceDTO getIntroduce(int id){
        return introduceMapper.getIntroduceByID(id);
    }
}
