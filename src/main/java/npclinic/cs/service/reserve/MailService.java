package npclinic.cs.service.reserve;

public interface MailService {
    void sendAcceptMail(String userId);
    void sendRejectMail(String userId);
}
