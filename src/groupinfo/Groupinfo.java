package groupinfo;

public class Groupinfo {

	String group_name;
	String area;
	
	

	public String getGroup_name() {
		return group_name;
	}
	public void setGroup_name(String group_name) {
		this.group_name = group_name;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	@Override
	public String toString() {
		return "Groupinfo [group_name=" + group_name + ", area=" + area + "]";
	}

	
	
};