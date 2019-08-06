package memo;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;


public class MemoDAO {

	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;

	
	public MemoDAO()  {

		try {
			String dburl = "jdbc:mysql://localhost:3306/garden_db";
			String dbid = "root";
			String dbpassword = "54321";

			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(dburl, dbid, dbpassword);
		} catch (Exception e) {
			// TODO: handle exception
		}

	}

	

	public ArrayList<Memo> search() {	// 조회에 사용

		String SQL = "SELECT * FROM Memo";	// planid가 ? 인 값을 조회하는 SQL문 // ? 는 pstmt 에서 변수 넣을때 사용 
		ArrayList<Memo> memoList = new ArrayList<Memo>();
		//System.out.println("check1");
		try {
			pstmt = conn.prepareStatement(SQL);	// pstmt 선언
			
			rs = pstmt.executeQuery();
			while (rs.next()) {

				//System.out.println("check2");
				
				Memo memo = new Memo();	// 같은 패키지인 Notice.java 이용 
				memo.setMemoNum(rs.getInt(1));
				memo.setUsersNum(rs.getInt(2));
				memo.setPetplantNum(rs.getInt(3)); //	not에 DB에서 연결한 값이 모여있는 rs의 값을 저장
				memo.setMemoTime(rs.getDate(4)); 
				memo.setMemoCon(rs.getString(5));
				memo.setMemoPublic(rs.getBoolean(6));
				
				memoList.add(memo);
			}

		} catch (Exception e) {
			// TODO: handle exception
		}

		return memoList;
	}



	public int register (Memo mo) { 	//등록에 사용
		String SQL ="INSERT INTO Memo(users_num, petplant_num, memo_time, memo_con, memo_public)VALUES ('20002','50001',now(),?,'1')"; 

		try { 
			
			pstmt = conn.prepareStatement(SQL); 
			
			pstmt.setString(1, mo.getMemoCon());
		
		return	pstmt.executeUpdate();	
	  } catch (Exception e) { 
		  e.printStackTrace(); 
	  }
	  return -1; // DB오류 
	}
	
	
	
	
	
	
}
