package petinfo;

public class Petinfo {
	
	String plant_name;
	String group_name;
	String petplant_name;
	String petplant_wterm;


	public String getPlant_name() {
		return plant_name;
	}
	public void setPlant_name(String plant_name) {
		this.plant_name = plant_name;
	}
	public String getGroup_name() {
		return group_name;
	}
	public void setGroup_name(String group_name) {
		this.group_name = group_name;
	}
	public String getPetplant_name() {
		return petplant_name;
	}
	public void setPetplant_name(String petplant_name) {
		this.petplant_name = petplant_name;
	}
	public String getPetplant_wterm() {
		return petplant_wterm;
	}
	public void setPetplant_wterm(String petplant_wterm) {
		this.petplant_wterm = petplant_wterm;
	}
	@Override
	public String toString() {
		return "Petinfo [plant_name=" + plant_name + ", group_name=" + group_name + ", petplant_name=" + petplant_name
				+ ", petplant_wterm=" + petplant_wterm + "]";
	}



	

};