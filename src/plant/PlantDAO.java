package plant;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class PlantDAO {

	/**
	 * 필요한 property 선언
	 */
	Connection con;
	Statement st;
	PreparedStatement ps;
	ResultSet rs;

	// MySQL
	String driverName = "com.mysql.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/garden_db?useUnicode=true&characterEncoding=UTF-8";
	// ORACLE
	// String driverName="oracle.jdbc.driver.OracleDriver";
	// String url = " jdbc:oracle:thin:@localhost:1521:ORCL";

	String id = "root";
	String pwd = "54321";

	/**
     * 로드와 연결을 위한 생성자 작성
	 * @return 
     */
    public PlantDAO(){
       
        try {
            //로드
            Class.forName(driverName);
           
            //연결
            con = DriverManager.getConnection(url,id,pwd);      
           
        } catch (ClassNotFoundException e) {
           
            System.out.println(e+"=> 로드 실패");
           
        } catch (SQLException e) {
           
            System.out.println(e+"=> 연결 실패");
        }
    }// JDBC_memberDAO()

	/**
	 * DB닫기 기능 메소드 작성
	 */
	public void db_close() {

		try {

			if (rs != null)
				rs.close();
			if (ps != null)
				ps.close();
			if (st != null)
				st.close();

		} catch (SQLException e) {
			System.out.println(e + "=> 닫기 오류");
		}

	} // db_close

	/**
	 * member테이블에 insert하는 메소드 작성
	 */
	public int plantInsert(PlantVO vo) {
		int result = 0;

		try {
			// 실행
			String sql = "INSERT INTO PLANT VALUES(?,?,?,?)";

			ps = con.prepareStatement(sql);
			ps.setString(1, vo.getPlant_num());
			ps.setString(2, vo.getPlant_sciname());
			ps.setString(3, vo.getPlant_name());
			ps.setString(4, vo.getPlant_type());
			result = ps.executeUpdate();

		} catch (Exception e) {

			System.out.println(e + "=> plantInsert fail");

		} finally {
			db_close();
		}

		return result;
	}// memberInsert

	/**
	 * member테이블의 모든 레코드 검색하(Select)는 메서드 작성
	 */

	public ArrayList<PlantVO> getPlantlist() {

		ArrayList<PlantVO> list = new ArrayList<PlantVO>();

		try {// 실행
			st = con.createStatement();
			rs = st.executeQuery("select * from plant");

			while (rs.next()) {
				PlantVO vo = new PlantVO();
				vo.setPlant_num(rs.getString(1));
				vo.setPlant_sciname(rs.getString(2));
				vo.setPlant_name(rs.getString(3));
				vo.setPlant_type(rs.getString(4));

				list.add(vo);
			}
		} catch (Exception e) {
			System.out.println(e + "=> getPlantlist fail");
		} finally {
			db_close();
		}
		return list;
	}// getMemberlist

	/**
     * member테이블의 모든 레코드 검색(Select)하는 메서드 작성
     * (검색필드와 검색단어가 들어왔을때는 where를 이용하여 검색해준다.)
     **/
   
    public ArrayList<PlantVO> getPlantlist(String keyField, String keyWord){
       
        ArrayList<PlantVO> list = new ArrayList<PlantVO>();
       
        try{//실행
           
            String sql ="select  plant_num, plant_sciname, plant_name, plant_type from Plant ";
           
            if(keyWord != null && !keyWord.equals("") ){
                sql +="WHERE "+keyField.trim()+" LIKE '%"+keyWord.trim()+"%' order by plant_name";
            }else{//모든 레코드 검색
                sql +="order by plant_name";
            }
            System.out.println("sql = " + sql);
            st = con.createStatement();
            rs = st.executeQuery(sql);
           
            while(rs.next()){
                PlantVO vo = new PlantVO();
                vo.setPlant_num(rs.getString(1));
                vo.setPlant_sciname(rs.getString(2));
                vo.setPlant_name(rs.getString(3));
                vo.setPlant_type(rs.getString(4));
               
                list.add(vo);
            }
        }catch(Exception e){          
            System.out.println(e+"=> getPlantlist fail");        
        }finally{          
            db_close();
        }      
        return list;
    }
    
    
    
    public ArrayList<PlantVO> getPlantlistdetail(String plant_num) {
    	String SQL = "SELECT * FROM plant where plant_num=? ";
    	
		ArrayList<PlantVO> plantList = new ArrayList<PlantVO>();
		
		try {// 실행
			ps = con.prepareStatement(SQL);	// pstmt 선언
			ps.setString(1, plant_num);	
			rs = ps.executeQuery();
			while (rs.next()) {
				PlantVO vo = new PlantVO();
				vo.setPlant_num(rs.getString(1));
				vo.setPlant_sciname(rs.getString(2));
				vo.setPlant_name(rs.getString(3));
				vo.setPlant_type(rs.getString(4));
				
				vo.setPlant_fert(rs.getString(13));
				vo.setPlant_light(rs.getString("plant_light"));
				vo.setPlant_managelv(rs.getString(9));
				vo.setPlant_watersp(rs.getString(14));
				vo.setPlant_watersu(rs.getString(15));
				vo.setPlant_waterfa(rs.getString(16));
				vo.setPlant_waterwi(rs.getString(17));
				vo.setPlant_img(rs.getString("plant_img"));
				vo.setPlant_flang(rs.getString("plant_flang"));
				vo.setPlant_humid(rs.getString("plant_humid"));
				vo.setPlant_place(rs.getString("plant_place"));

				plantList.add(vo);
			}
		} catch (Exception e) {
			System.out.println(e + "=> getPlantlist fail");
		} finally {
			db_close();
		}
		return plantList;
	}
    
    
    
    
    
}