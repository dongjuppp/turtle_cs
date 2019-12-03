package npclinic.cs.service.reserve;

import npclinic.cs.dto.user.UserDTO;
import npclinic.cs.mapper.user.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.stereotype.Service;

@Service
public class MailServiceImpl implements MailService {

    private UserMapper userMapper;

    public MailServiceImpl(UserMapper userMapper){
        this.userMapper = userMapper;
    }

    public void sendAcceptMail(String userId){
        UserDTO userDTO = userMapper.getUserByID(userId);
        String email = userDTO.getEmail();
        SimpleMailMessage msg = new SimpleMailMessage();
        JavaMailSender javaMailSender = new JavaMailSenderImpl();

        msg.setTo(email);
        msg.setSubject("김갑수마취통증의학과 예약 승인 메일입니다.");
        msg.setText("고객님의 예약이 승인되었습니다.");

        javaMailSender.send(msg);
    }

    public void sendRejectMail(String userId){
        UserDTO userDTO = userMapper.getUserByID(userId);
        String email = userDTO.getEmail();
        SimpleMailMessage msg = new SimpleMailMessage();
        JavaMailSender javaMailSender = new JavaMailSenderImpl();

        msg.setTo(email);
        msg.setSubject("김갑수마취통증의학과 예약 거절 메일입니다.");
        msg.setText("고객님의 예약이 거절되었습니다.");

        javaMailSender.send(msg);

    }

}
