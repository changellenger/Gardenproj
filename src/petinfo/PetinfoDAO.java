package petinfo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;


public class PetinfoDAO {
	private Connection conn;
	private PreparedStatement pstmt;


	public PetinfoDAO() {

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
		
	public int register (Petinfo pet) { 	//등록에 사용
		String SQL ="INSERT INTO PETPLANT (group_num, plant_num, petplant_name, petplant_wterm)VALUES"
				+"((select group_num from group_info where group_name like '에이콘아카데미' ),(select plant_num from plant where plant_name like '브룬펠시아' ),?,?)"; 
		//INSERT INTO petplant (plant_num,petplant_wterm,petplant_name,group_num) VALUES('30001','4','sql테스트','40002');
		try { 
			
			pstmt = conn.prepareStatement(SQL); 
						
			//pstmt.setString(1, pet.getGroup_name());
			//pstmt.setString(2, pet.getPlant_name()); 
			pstmt.setString(1, pet.getPetplant_name());
			pstmt.setString(2, pet.getPetplant_wterm());
			/*if(pet.getPetplant_wterm1()!=null) {		2		
				pstmt.setString(2, pet.getPetplant_wterm1());
			}else {
				pstmt.setString(2, pet.getPetplant_wterm2());
				}*/
			

		return
			pstmt.executeUpdate();	
	  } catch (Exception e) { 
		  e.printStackTrace(); 
	  }
	  return -1; // DB오류 
	}
	

}


