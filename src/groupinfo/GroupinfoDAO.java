package groupinfo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;


public class GroupinfoDAO {
	private Connection conn;
	private PreparedStatement pstmt;


	public GroupinfoDAO() {

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
		
	public void register (Groupinfo gr) { 	//등록에 사용
		String SQL ="INSERT INTO GROUP_INFO (group_name, area)VALUES (?,?)"; 
		//INSERT INTO petplant (plant_num,petplant_wterm,petplant_name,group_num) VALUES('30001','4','sql테스트','40002');
		try { 
			
			pstmt = conn.prepareStatement(SQL); 
						
			pstmt.setString(1, gr.getGroup_name());
			pstmt.setString(2, gr.getArea()); 

			pstmt.executeUpdate();	
	  } catch (Exception e) { 
		  e.printStackTrace(); 
	  }
	}
	
	public void registermember (String users_id, String group_name) { 	//등록에 사용
		String SQL ="INSERT INTO GROUP_MEMB (users_num, group_num)VALUES ((select users_num from users where users_id = ?) ,(select group_num from group_info where group_name = ?) )";  
		//INSERT INTO petplant (plant_num,petplant_wterm,petplant_name,group_num) VALUES('30001','4','sql테스트','40002');
		try { 
			
			pstmt = conn.prepareStatement(SQL); 
						
			pstmt.setString(1, users_id); 
			pstmt.setString(2, group_name);

			pstmt.executeUpdate();	
	  } catch (Exception e) { 
		  e.printStackTrace(); 
	  }
	}
	
	public void registermemberGID (String users_num, String group_num) { 	//등록에 사용
		String SQL ="INSERT INTO GROUP_MEMB (users_num, group_num)VALUES (? ,?)";  
		//INSERT INTO petplant (plant_num,petplant_wterm,petplant_name,group_num) VALUES('30001','4','sql테스트','40002');
		try { 
			
			pstmt = conn.prepareStatement(SQL); 
						
			pstmt.setString(1, users_num); 
			pstmt.setString(2, group_num);

			pstmt.executeUpdate();	
	  } catch (Exception e) { 
		  e.printStackTrace(); 
	  }
	}
}


