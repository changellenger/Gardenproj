package waterinfo;

public class Waterinfo {
	
	String petplant_name;
	String water_date1;
	String water_date2;
	String users_name;
	String users_id;
	
	public String getPetplant_name() {
		return petplant_name;
	}
	public void setPetplant_name(String petplant_name) {
		this.petplant_name = petplant_name;
	}
	public String getWater_date1() {
		return water_date1;
	}
	public void setWater_date1(String water_date1) {
		this.water_date1 = water_date1;
	}
	public String getWater_date2() {
		return water_date2;
	}
	public void setWater_date2(String water_date2) {
		this.water_date2 = water_date2;
	}
	public String getUsers_name() {
		return users_name;
	}
	public void setUsers_name(String users_name) {
		this.users_name = users_name;
	}
	
	
	
	public String getUsers_id() {
		return users_id;
	}
	public void setUsers_id(String users_id) {
		this.users_id = users_id;
	}
	@Override
	public String toString() {
		return "Waterinfo [petplant_name=" + petplant_name + ", water_date1=" + water_date1 + ", water_date2="
				+ water_date2 + ", users_name=" + users_name + ", users_id=" + users_id + "]";
	}

	
	
	
	
	
};