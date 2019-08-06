package water;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;


public class WaterDAO {
	private Connection conn;
	private PreparedStatement pstmt;


	public WaterDAO() {

		try {
			String dburl = "jdbc:mysql://localhost:3306/garden_db?useUnicode=true&characterEncoding=UTF-8";
			String dbid = "root";
			String dbpassword = "54321";

			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(dburl, dbid, dbpassword);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

	}

	
	public void givewater (String petplant_num, String users_id, String waterdate) { 	//등록에 사용
		String SQL ="insert into water (petplant_num, water_date, users_num) values(?,?,(select users_num from users where users_id =?))"; 
		
		
		long transwdate =	Long.parseLong(waterdate);
		Date date = new Date(transwdate);

		String formatted = new SimpleDateFormat("yyyy-MM-dd").format(date);
		
		System.out.println("servlet date :"+ formatted);
		try { 
			
			pstmt = conn.prepareStatement(SQL); 
			
			pstmt.setString(1,petplant_num);
			pstmt.setString(2, formatted); 
			pstmt.setString(3, users_id);
			pstmt.executeUpdate();	
			
	  } catch (Exception e) { 
		  e.printStackTrace(); 
	  }
	}



	

	
}


