package water;

public class Water {
	
	String petplant_num;
	String water_date;
	String users_num;
	String users_name;
	public String getPetplant_num() {
		return petplant_num;
	}
	public void setPetplant_num(String petplant_num) {
		this.petplant_num = petplant_num;
	}
	public String getWater_date() {
		return water_date;
	}
	public void setWater_date(String water_date) {
		this.water_date = water_date;
	}
	public String getUsers_num() {
		return users_num;
	}
	public void setUsers_num(String users_num) {
		this.users_num = users_num;
	}
	public String getUsers_name() {
		return users_name;
	}
	public void setUsers_name(String users_name) {
		this.users_name = users_name;
	}
	
	
	@Override
	public String toString() {
		return "Water [petplant_num=" + petplant_num + ", water_date=" + water_date + ", users_num=" + users_num
				+ ", users_name=" + users_name + "]";
	}
	

}
