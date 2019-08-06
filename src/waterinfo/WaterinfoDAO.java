package waterinfo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;


public class WaterinfoDAO {
	private Connection conn;
	private PreparedStatement pstmt;


	public WaterinfoDAO() {

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
		
	public int register (Waterinfo wt) { 	//등록에 사용
		String SQL ="INSERT INTO WATER (petplant_num,  water_date ,users_num )VALUES"
				+"((select petplant_num from petplant where petplant_name like ? ),?,(select users_num from users where users_id like ? ))"; 
		//INSERT INTO petplant (plant_num,petplant_wterm,petplant_name,group_num) VALUES('30001','4','sql테스트','40002')
		try { 
			
			pstmt = conn.prepareStatement(SQL); 
						
			pstmt.setString(1, wt.getPetplant_name());
			
			if(wt.getWater_date1()!=null) {				
				pstmt.setString(2, wt.getWater_date1());
			}else {
				System.out.println("checkingdate :"+wt.getWater_date2());
				pstmt.setString(2, wt.getWater_date2());
				}
			
			pstmt.setString(3, wt.getUsers_id());
			
			System.out.println("pet name : "+wt.getPetplant_name());
			System.out.println("ch  : "+wt.getWater_date1());
			System.out.println("non ch : "+wt.getWater_date2());
			

		return
			pstmt.executeUpdate();	
	  } catch (Exception e) { 
		  e.printStackTrace(); 
	  }
	  return -1; // DB오류 
	}
	
}


