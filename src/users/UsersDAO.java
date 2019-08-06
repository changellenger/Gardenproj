package users;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;


public class UsersDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;


	public UsersDAO() {

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

	public int registerCheck(String users_id) {
		System.out.println("recheck"+users_id);
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String SQL = "select * from users where users_id = ?";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, users_id);
			rs = pstmt.executeQuery();
			
			/*String CheckID = null;
			System.out.println("check1 :"+users_id);
			
				System.out.println("check2 :"+users_id);*/
				if(rs.next()) {
					return 0;
				}else {
					return 1;
				}
			
			
			/*if(rs.next() || users_id.equals("")) { // 결과가 있다면
				return 0; // 이미 존재하는 아이디
			} else {
				return 1; // 가입 가능한 아이디
			}*/
		}catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
				if(pstmt !=null) pstmt.close();
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		return -1; // 데이터베이스 오류
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
	
	
	public int givewater (String users_id,String water_date, String petplant_num) { 	//등록에 사용
		String SQL ="INSERT INTO water VALUES (?,?,?)"; 
		//INSERT INTO petplant (plant_num,petplant_wterm,petplant_name,group_num) VALUES('30001','4','sql테스트','40002');
		try { 
			pstmt = conn.prepareStatement(SQL); 
			pstmt.setString(1, petplant_num); 
			pstmt.setString(2, water_date);
			pstmt.setString(3, users_id);
			
		return
			pstmt.executeUpdate();	
	  } catch (Exception e) { 
		  e.printStackTrace(); 
	  }
	  return -1; // DB오류 
	}
	
	
public ArrayList<Users> search(String users_id){
		
		
		//String SQL = "select * from water where petplant_num in (SELECT petplant_num FROM garden_db.petplant where group_num = ? )";
		String SQL = "SELECT users_num, group_info.group_num, group_info.group_name, group_info.area FROM group_memb, group_info where group_memb.group_num = group_info.group_num and group_memb.users_num =  ( select users_num from users where users_id = ?)";
		ArrayList<Users> calList = new ArrayList<Users>();
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, users_id);		
			rs=pstmt.executeQuery();
			while(rs.next()) {
				Users user = new Users();
				
				user.setUsers_Number(rs.getString(1));
				user.setGroup_num(rs.getString(2));
				user.setGroup_name(rs.getString(3));
				user.setArea(rs.getString(4));
				
				calList.add(user);
				
			}
			
			
					
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return calList;
	}


public ArrayList<Users> selectmember(String group_id){
	
	
	//String SQL = "select * from water where petplant_num in (SELECT petplant_num FROM garden_db.petplant where group_num = ? )";
	String SQL = "SELECT users_name FROM garden_db.users where users_num in (SELECT users_num FROM garden_db.group_memb where group_num = ?)";
	ArrayList<Users> memberList = new ArrayList<Users>();
	try {
		pstmt = conn.prepareStatement(SQL);
		pstmt.setString(1, group_id);		
		rs=pstmt.executeQuery();
		while(rs.next()) {
			
			Users member = new Users();
			System.out.println("USERS_NAME"+rs.getString(1));
			member.setUsers_name(rs.getString(1));
			memberList.add(member);
			
		}
		
		
				
	} catch (Exception e) {
		// TODO: handle exception
	}
	
	return memberList;
}


public ArrayList<Users> emailsearch(String email) { 	//등록에 사용
	String SQL ="select users_name,users_email,users_num from users where users_email like ?";
	ArrayList<Users> memberList = new ArrayList<Users>();
	
	try { 
		pstmt = conn.prepareStatement(SQL); 
		pstmt.setString(1, "%"+email+"%"); 
		
		rs=pstmt.executeQuery();
		while(rs.next()) {
			
			Users member = new Users();
			member.setUsers_name(rs.getString(1));
			member.setUsers_email(rs.getString(2));
			member.setUsers_Number(rs.getString(3));
			memberList.add(member);
			
		}
	
		
  } catch (Exception e) { 
	  e.printStackTrace(); 
  }
	return memberList;
}
	
}


