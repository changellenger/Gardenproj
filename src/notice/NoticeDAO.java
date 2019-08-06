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

	public ArrayList<Notice> search() {	// ��ȸ�� ���

		String SQL = "SELECT * FROM notice ";	// planid�� ? �� ���� ��ȸ�ϴ� SQL�� // ? �� pstmt ���� ���� ������ ��� 
		ArrayList<Notice> noticeList = new ArrayList<Notice>();
		//System.out.println("check1");
		try {
			pstmt = conn.prepareStatement(SQL);	// pstmt ����
			
			rs = pstmt.executeQuery();
			while (rs.next()) {

				//System.out.println("check2");
				
				Notice notice = new Notice();	// ���� ��Ű���� Notice.java �̿� 
				notice.setNotice_num(rs.getInt(1));
				notice.setAdmins_num(rs.getInt(2));
				notice.setNotice_con(rs.getString(3)); //	not�� DB���� ������ ���� ���ִ� rs�� ���� ����
				notice.setNoticeview(rs.getInt(4)); 
				notice.setNoticesub(rs.getString(5)); 
				noticeList.add(notice);
			}

		} catch (Exception e) {
			// TODO: handle exception
		}

		return noticeList;
	}
	
	public ArrayList<Notice> detailSearch(String notice_num) {	// ��ȸ�� ���

		String SQL = "SELECT * FROM notice where notice_num=? ";	// planid�� ? �� ���� ��ȸ�ϴ� SQL�� // ? �� pstmt ���� ���� ������ ��� 
		ArrayList<Notice> noticeList = new ArrayList<Notice>();
		//System.out.println("check1");
		try {
			pstmt = conn.prepareStatement(SQL);	// pstmt ����
			pstmt.setString(1, notice_num);	
			rs = pstmt.executeQuery();
			while (rs.next()) {

				
				Notice notice = new Notice();	// ���� ��Ű���� Notice.java �̿� 
				notice.setNotice_num(rs.getInt(1));
				notice.setAdmins_num(rs.getInt(2));
				notice.setNotice_con(rs.getString(3)); //	not�� DB���� ������ ���� ���ִ� rs�� ���� ����
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
