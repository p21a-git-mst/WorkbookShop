package model;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;


public class MailLogic {

	public void send(String txt) {
		try {
			Properties props = new Properties();
			props.put("mail.smtp.host", "smtp.itbc2021.work" );	// SMTPサーバセット
			props.put("mail.smtp.port", "587");					// SMTPポート番号

			Session session=Session.getDefaultInstance(props, null);

			MimeMessage msg = new MimeMessage(session);
			msg.setFrom();
			msg.setRecipients(Message.RecipientType.TO,
						InternetAddress.parse("p21a-shimizu-y@itbc2021.work", false));	// 送信先
			msg.setSubject("新規会員が登録されました");
			msg.setText(txt);

			Transport transport = session.getTransport("smtp");
			transport.connect(null,"p21a-shimizu-y@itbc2021.work","shimizuat2021");// 認証
			transport.sendMessage(msg, msg.getAllRecipients());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static void main(String[] args) {
		new MailLogic().send("テスト送信");
	}
}
