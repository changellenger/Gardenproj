package notice;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class NoticeDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;

	public NoticeDAO()  {

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

	public ArrayList<Notice> search() {	// 조회에 사용

		String SQL = "SELECT * FROM notice ";	// planid가 ? 인 값을 조회하는 SQL문 // ? 는 pstmt 에서 변수 넣을때 사용 
		ArrayList<Notice> noticeList = new ArrayList<Notice>();
		//System.out.println("check1");
		try {
			pstmt = conn.prepareStatement(SQL);	// pstmt 선언
			
			rs = pstmt.executeQuery();
			while (rs.next()) {

				//System.out.println("check2");
				
				Notice notice = new Notice();	// 같은 패키지인 Notice.java 이용 
				notice.setNotice_num(rs.getInt(1));
				notice.setAdmins_num(rs.getInt(2));
				notice.setNotice_con(rs.getString(3)); //	not에 DB에서 연결한 값이 모여있는 rs의 값을 저장
				notice.setNoticeview(rs.getInt(4)); 
				notice.setNoticesub(rs.getString(5)); 
				noticeList.add(notice);
			}

		} catch (Exception e) {
			// TODO: handle exception
		}

		return noticeList;
	}
	
	public ArrayList<Notice> detailSearch(String notice_num) {	// 조회에 사용

		String SQL = "SELECT * FROM notice where notice_num=? ";	// planid가 ? 인 값을 조회하는 SQL문 // ? 는 pstmt 에서 변수 넣을때 사용 
		ArrayList<Notice> noticeList = new ArrayList<Notice>();
		//System.out.println("check1");
		try {
			pstmt = conn.prepareStatement(SQL);	// pstmt 선언
			pstmt.setString(1, notice_num);	
			rs = pstmt.executeQuery();
			while (rs.next()) {

				
				Notice notice = new Notice();	// 같은 패키지인 Notice.java 이용 
				notice.setNotice_num(rs.getInt(1));
				notice.setAdmins_num(rs.getInt(2));
				notice.setNotice_con(rs.getString(3)); //	not에 DB에서 연결한 값이 모여있는 rs의 값을 저장
				notice.setNoticeview(rs.getInt(4)); 
				notice.setNoticesub(rs.getString(5)); 
				noticeList.add(notice);
			}

		} catch (Exception e) {
			// TODO: handle exception
		}

		return noticeList;
	}

	
	
}
