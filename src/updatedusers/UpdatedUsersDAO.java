package updatedusers;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;





public class UpdatedUsersDAO {

	private Connection conn;
	private PreparedStatement pstmt;


	public UpdatedUsersDAO() {

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
	
	public int update (UpdatedUsers nus) {

		/*
		 * String SQL =
		 * "UPDATE INTO USERS(users_pw, users_name, users_email, users_phone) VALUE (?,?,?,?)"
		 * + "where users_id = '" + nus.getUsers_id()+ "'";
		 */
		
		String SQL = "update users  set users_pw=?, users_name=?, users_email=?,users_phone=?  where users_id=?";

		System.out.println(nus.getUsers_id());
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, nus.getUsers_npw());
			pstmt.setString(2, nus.getUsers_nname());
			pstmt.setString(3, nus.getUsers_nemail());
			pstmt.setString(4, nus.getUsers_nphone());
			pstmt.setString(5, nus.getUsers_id());
			return	pstmt.executeUpdate();	
			  } catch (Exception e) { 
				  e.printStackTrace(); 
			  }
			  return -1; // DB¿À·ù 
			}
	
	
};
