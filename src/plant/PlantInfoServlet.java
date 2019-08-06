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
		String plant_num = request.getParameter("plant_num");			// jsp�� ���� planid ���� ���۹޾� string planid�� ����
					// planid�� ������ ������ getJSON() �Լ��� ȣ��
																// ���� ���ϵǴ� ��Ʈ������ jsp�������� ����
	
		
				// ���� jsonŸ���� ���ڷ� �����ϱ� ���� ���������� �̿�
							// append �� ������ ���� ���ʿ� ���ڿ��� �߰��ϴ� �Լ�
		PlantDAO PlantDAO = new PlantDAO();				// CalendarDAO�� search�Լ��� �̿��ϱ� ���� ����
		ArrayList<PlantVO> plantList = PlantDAO.getPlantlistdetail(plant_num);//  calDAO.search(planid) �� ���� calList��� ��� ����Ʈ�� ����
		
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
		html +="<br><h5>����</h5><br>";
		html +=" 	<p>"+plantList.get(0).getPlant_type()+"</p>";
		html +="<br><h5>�ɸ�</h5><br>";
		html +=" 	<p>"+plantList.get(0).getPlant_flang()+"</p>";
		html +="<br><h5>Ű��� ���̵�</h5><br>";
		html +=" 	<p>"+plantList.get(0).getPlant_managelv()+"</p>";
		html +="<br><h5>���ʿ䷮(��)</h5><br>";
		html +=" 	<p>"+plantList.get(0).getPlant_watersp()+"�ϴ� �ѹ�</p>";
		html +="<br><h5>���ʿ䷮(����)</h5><br>";
		html +=" 	<p>"+plantList.get(0).getPlant_watersu()+"�ϴ� �ѹ�</p>";
		html +="<br><h5>���ʿ䷮(����)</h5><br>";
		html +=" 	<p>"+plantList.get(0).getPlant_waterfa()+"�ϴ� �ѹ�</p>";
		html +="<br><h5>���ʿ䷮(�ܿ�)</h5><br>";
		html +=" 	<p>"+plantList.get(0).getPlant_waterwi()+"�ϴ� �ѹ�</p>";
		html +="<br><h5>���� �ʿ䷮</h5><br>";
		html +=" <p>"+plantList.get(0).getPlant_fert()+"</p>";	
		html +="<br><h5>���� ��ġ</h5><br>";
		html +=" 	<p>"+plantList.get(0).getPlant_place()+"</p>";
		html +="<br><h5>���� ����</h5><br>";
		html +=" 	<p>"+plantList.get(0).getPlant_humid()+"</p>";
		html +="<br><h5>���� ������</h5><br>";
		html +=" <p>"+plantList.get(0).getPlant_light()+"</p>";	
		html +="<br>";	
		html +="		</form>";
		html +="	</div>";	
		html +="</div>";
		
		   
		   
   response.getWriter().write(html);	//jsp ��  success: function(html)
		

	}

}
