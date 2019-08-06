package calendar;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;

import org.apache.catalina.User;

import users.Users;

public class SpringCalendarDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public SpringCalendarDAO() {
		
		try {
			String dburl = "jdbc:mysql://localhost:3306/garden_db";
			String dbid	="root";
			String dbpassword ="54321";
			
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(dburl,dbid,dbpassword);
		} catch (Exception e) {
			// TODO: handle exception
		}
		
	}
	
	public ArrayList<SpringCalendar> search(String groupnum){
		
		
		//String SQL = "select * from water where petplant_num in (SELECT petplant_num FROM garden_db.petplant where group_num = ? )";
		String SQL = "select  water.petplant_num, water.water_date , water.users_num, petplant_name, petplant_wterm, (select users_name from users where users_num = water.users_num ) from water , petplant "
				+ "where  group_num = ? and water.petplant_num = petplant.petplant_num  order by water_date desc";
		ArrayList<SpringCalendar> calList = new ArrayList<SpringCalendar>();
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, groupnum);		
			//pstmt.setString(2, groupnum);		
			rs=pstmt.executeQuery();
		
			while(rs.next()) {
				
				SpringCalendar cal = new SpringCalendar();
				cal.setPetplantNum(rs.getString(1));
				cal.setWaterDate(rs.getString(2));
				cal.setUsersNum(rs.getString(3));
				cal.setPetplantName(rs.getString(4));
				cal.setNextwday(nextwaterday(rs.getDate(2),rs.getInt(5)));
				cal.setUsersName(rs.getString(6));
				
				calList.add(cal);
			}
			
					
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return calList;
	}
	
public ArrayList<SpringCalendar> Wdaysearch(String groupnum){
		
		System.out.println("groupnum array :" + groupnum);
		
		//String SQL = "select * from water where petplant_num in (SELECT petplant_num FROM garden_db.petplant where group_num = ? )";
		String SQL = "select  water.petplant_num, max(water.water_date) , water.users_num, petplant_name, petplant_wterm from water , petplant" + 
				"				where  group_num = ? and water.petplant_num = petplant.petplant_num  group by petplant_num;";
		ArrayList<SpringCalendar> calList = new ArrayList<SpringCalendar>();
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, groupnum);		
			//pstmt.setString(2, groupnum);		
			rs=pstmt.executeQuery();
		
			while(rs.next()) {
				
				SpringCalendar cal = new SpringCalendar();
				cal.setPetplantNum(rs.getString(1));
				cal.setNextwday(nextwaterday(rs.getDate(2),rs.getInt(5)));
				cal.setUsersNum(rs.getString(3));
				cal.setPetplantName(rs.getString(4));
				
				calList.add(cal);
			}
			
					
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return calList;
	}
	
	
	public String nextwaterday(Date date, int term) {
		
		  DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		
		         
		        // 날짜 더하기
		        Calendar cal = Calendar.getInstance();
		        cal.setTime(date);
		        cal.add(Calendar.DATE, term);
		         
		       // System.err.println(df.format(cal.getTime()));
		
		return df.format(cal.getTime());
	}
	
	
	public int register (Users us) { 	//등록에 사용
		String SQL ="INSERT INTO USERS(users_id, users_pw, users_name, users_gender, users_email, users_phone, users_birthday)VALUES (?,?,?,?,?,?,?)"; 
		//INSERT INTO petplant (plant_num,petplant_wterm,petplant_name,group_num) VALUES('30001','4','sql테스트','40002');
		try { 
			
			pstmt = conn.prepareStatement(SQL); 
			
			
			pstmt.setString(1, us.getUsers_id());
			pstmt.setString(2, us.getUsers_pw()); 
			pstmt.setString(3, us.getUsers_name());
			pstmt.setString(4, us.getUsers_gender());
			pstmt.setString(5, us.getUsers_email());
			pstmt.setString(6, us.getUsers_phone());
			pstmt.setString(7, us.getUsers_birthday());
		return
			pstmt.executeUpdate();	
	  } catch (Exception e) { 
		  e.printStackTrace(); 
	  }
	  return -1; // DB오류 
	}
	
	
	

}
