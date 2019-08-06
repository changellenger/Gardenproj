package plant;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/docs/PlantInfoServlet")
public class PlantInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset = UTF-8");
		String plant_num = request.getParameter("plant_num");			// jsp로 부터 planid 값을 전송받아 string planid에 저장
					// planid를 변수로 가지는 getJSON() 함수를 호출
																// 이후 리턴되는 스트링값을 jsp페이지로 전송
	
		
				// 값을 json타입의 문자로 전송하기 위해 스프링버퍼 이용
							// append 는 스프링 버퍼 뒤쪽에 문자열을 추가하는 함수
		PlantDAO PlantDAO = new PlantDAO();				// CalendarDAO의 search함수를 이용하기 위해 선언
		ArrayList<PlantVO> plantList = PlantDAO.getPlantlistdetail(plant_num);//  calDAO.search(planid) 의 값을 calList라는 어레이 리스트에 저장
		
		String html = "";
	
		
		html +="<div class=\"timeline-post\">";	
		html +="	<div class=\"content\">";
		html +="		<h3><a href=\"#\">"+plantList.get(0).getPlant_name()+"</a></h3>";
		html +="	</div>";	
		
		html +="	<h3 class=\"tile-title\" align=\"center\"></h3>";
		html +="	<div class=\"tile-body\">";
		html +="		<form class=\"form-horizontal\" role=\"form\">";
		html +="			<div class=\"form-group col-md-12\">";
		html +="					<div class=\"form-group row\">";
		html +="					<div class=\"col-md-2\"></div>";						
		html +="						<div class=\"col-md-4\">";
		html +="							<img src=\"../img/"+plantList.get(0).getPlant_img()+"\" width=\"300\" height=\"300\">";
		html +="						</div>";
		
		html +="					<div class=\"col-md-5\"> ";
		html +=	"						<div class=\"tile\"> "; 
		html +=	"							<h3 class=\"tile-title\"></h3>"; 
		html +=	"							<div class=\"embed-responsive embed-responsive-16by9\">" ;
		html +=	"								<canvas class=\"embed-responsive-item\" id=\"radarChartDemo\"></canvas>"; 
		html +=	"			 				</div>" ;
		html +=	"						</div>" ;
		html +=	"					</div>";
		html +="				</div>";
		html +="				</div>";
		
		html +=" 				<p class=\"text-muted\"><small></small></p>";	
		html +="	<div class=\"post-content\">";
		html +="<br><h5>종류</h5><br>";
		html +=" 	<p>"+plantList.get(0).getPlant_type()+"</p>";
		html +="<br><h5>꽃말</h5><br>";
		html +=" 	<p>"+plantList.get(0).getPlant_flang()+"</p>";
		html +="<br><h5>키우기 난이도</h5><br>";
		html +=" 	<p>"+plantList.get(0).getPlant_managelv()+"</p>";
		html +="<br><h5>물필요량(봄)</h5><br>";
		html +=" 	<p>"+plantList.get(0).getPlant_watersp()+"일당 한번</p>";
		html +="<br><h5>물필요량(여름)</h5><br>";
		html +=" 	<p>"+plantList.get(0).getPlant_watersu()+"일당 한번</p>";
		html +="<br><h5>물필요량(가을)</h5><br>";
		html +=" 	<p>"+plantList.get(0).getPlant_waterfa()+"일당 한번</p>";
		html +="<br><h5>물필요량(겨울)</h5><br>";
		html +=" 	<p>"+plantList.get(0).getPlant_waterwi()+"일당 한번</p>";
		html +="<br><h5>영양 필요량</h5><br>";
		html +=" <p>"+plantList.get(0).getPlant_fert()+"</p>";	
		html +="<br><h5>권장 위치</h5><br>";
		html +=" 	<p>"+plantList.get(0).getPlant_place()+"</p>";
		html +="<br><h5>권장 습도</h5><br>";
		html +=" 	<p>"+plantList.get(0).getPlant_humid()+"</p>";
		html +="<br><h5>권장 일조량</h5><br>";
		html +=" <p>"+plantList.get(0).getPlant_light()+"</p>";	
		html +="<br>";	
		html +="		</form>";
		html +="	</div>";	
		html +="</div>";
		
		   
		   
   response.getWriter().write(html);	//jsp 로  success: function(html)
		

	}

}
