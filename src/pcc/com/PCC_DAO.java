package pcc.com;

import javax.activation.DataSource;
import javax.mail.util.ByteArrayDataSource;
import javax.mail.Session;
import javax.mail.PasswordAuthentication;
import javax.mail.Authenticator;
import java.util.Properties;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import javax.activation.DataHandler;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.Multipart;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.mail.util.ByteArrayDataSource;

public class PCC_DAO {

	public static Connection getConnection() {
		Connection con = null;
		String url = "jdbc:mysql://localhost:3306/pcc_db";
		String uname = "root";
		String pswd = "admin@12345";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url,uname,pswd);
		} catch (Exception e) {
			System.out.println(e);
		}
		return con;
	}

	public static int add_player(Player p) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("insert into Player values(?,?,?,?,?,?,?,?,?)");
			ps.setInt(1, p.getId());
			ps.setString(2, p.getName());
			ps.setInt(3, p.getAge());
			ps.setString(4, p.getRole());
			ps.setString(5, p.getBatting());
			ps.setString(6, p.getBowling());
			ps.setString(7, p.getTname());
			ps.setString(8, p.getPosition());
			ps.setBytes(9, p.getIm());
			status = ps.executeUpdate();
			con.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return status;
	}
	
	public static int edit_player(Player p) {
		int status = 0;
		try {
			Connection con = getConnection();
			if(p.getIm() != null) {
				System.out.println("dao im "+p.getIm());
				System.out.println("I am in if cond dao");
				PreparedStatement ps = con.prepareStatement("update Player set name=?, age=?, role=?, batting=?, bowling=?, team=?, position=?, img=? where player_id=?");
				ps.setString(1, p.getName());
				ps.setInt(2, p.getAge());
				ps.setString(3, p.getRole());
				ps.setString(4, p.getBatting());
				ps.setString(5, p.getBowling());
				ps.setString(6, p.getTname());
				ps.setString(7, p.getPosition());
				ps.setBytes(8, p.getIm());
				ps.setInt(9, p.getId());
				status = ps.executeUpdate();
			}
			else {
				PreparedStatement ps = con.prepareStatement("update Player set name=?, age=?, role=?, batting=?, bowling=?, team=?, position=? where player_id=?");
				ps.setString(1, p.getName());
				ps.setInt(2, p.getAge());
				ps.setString(3, p.getRole());
				ps.setString(4, p.getBatting());
				ps.setString(5, p.getBowling());
				ps.setString(6, p.getTname());
				ps.setString(7, p.getPosition());
				ps.setInt(8, p.getId());
				status = ps.executeUpdate();
			}
			con.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return status;
	}

	public static List<Player> getAllPlayers() {
		List<Player> list = new ArrayList<Player>();
		Connection con = getConnection();
		PreparedStatement ps;
		try {
			ps = con.prepareStatement("select * from player");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Player p = new Player(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getString(5),
						rs.getString(6), rs.getString(7), rs.getString(8), rs.getBytes(9));
				list.add(p);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public static byte[] getPlayerimg(int id) {
		Connection con = getConnection();
		PreparedStatement ps;
		byte[] img = null;
		try {
			ps = con.prepareStatement("select img from player where player_id = ?");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				img = rs.getBytes(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return img;
	}

	public static Player getPlayerById(int id) {

		Player p = null;
		Connection con = getConnection();
		PreparedStatement ps;

		try {
			ps = con.prepareStatement("select * from player where player_id = ?");
			ps.setInt(1, id);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				p = new Player(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getString(5),
						rs.getString(6), rs.getString(7), rs.getString(8), rs.getBytes(9));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return p;
	}
	
	public static int deletePlayer(int id) {
		int status = 0;
		Connection con = getConnection();
		PreparedStatement ps;

		try {
			ps = con.prepareStatement("delete from player where player_id = ?");
			ps.setInt(1, id);

			status = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return status;
	}
	
	public static void send(String to, String sub, String msg)
		{ 
			final String user = "punjabcriketclub@gmail.com";
			final String pass = "South@115";
			
			//create an instance of Properties Class   
			Properties props = new Properties();
			
		
			props.put("mail.smtp.host", "smtp.gmail.com");
			props.put("mail.smtp.port", "587");		
			props.put("mail.smtp.auth", "true");
			props.put("mail.smtp.starttls.enable", "true");
			
		
			Session session = Session.getInstance(props,new javax.mail.Authenticator()
			{
				protected PasswordAuthentication getPasswordAuthentication()
				{
				    return new PasswordAuthentication(user,pass); 
				}
			});
			
			try {
				
		
				
				MimeMessage message = new MimeMessage(session);
				message.setFrom(new InternetAddress(user));
				message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));
				message.setSubject(sub);
				message.setText(msg);
					
				Transport.send(message);
			}
			catch(Exception e) {
				e.printStackTrace();
			}
	}  
	
	public static void send(String to, String sub, String msg, byte[] img)
	{ 
		final String user = "punjabcriketclub@gmail.com";
		final String pass = "South@115";
		
		//create an instance of Properties Class   
		Properties props = new Properties();
		
	
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");		
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		
	
		Session session = Session.getInstance(props,new javax.mail.Authenticator()
		{
			protected PasswordAuthentication getPasswordAuthentication()
			{
			    return new PasswordAuthentication(user,pass); 
			}
		});
		
		try {
			
	
			
			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress(user));
			message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));
			message.setSubject(sub);
			BodyPart messageBodyPart = new MimeBodyPart();
			messageBodyPart.setText(msg);
		
			 Multipart multipart = new MimeMultipart();
			 multipart.addBodyPart(messageBodyPart);
			 
			 messageBodyPart = new MimeBodyPart();
			 DataSource source = new ByteArrayDataSource(img, "image/jpeg");

	         messageBodyPart.setDataHandler(new DataHandler(source));
	         messageBodyPart.setFileName("Image.jpeg");
	         multipart.addBodyPart(messageBodyPart);
	         message.setContent(multipart);
				
			Transport.send(message);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
}  
}
