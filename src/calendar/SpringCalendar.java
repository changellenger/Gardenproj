package calendar;

import java.util.Date;

public class SpringCalendar {
	
	String petplantNum;
	String waterDate;
	String usersNum;
	String petplantName;
	String usersName;
	
	
	
	public String getUsersName() {
		return usersName;
	}
	public void setUsersName(String usersName) {
		this.usersName = usersName;
	}
	String petplantWterm;
	
	
	String nextwday;
	
	

	public String getNextwday() {
		return nextwday;
	}
	public void setNextwday(String nextwday) {
		this.nextwday = nextwday;
	}
	
	public String getPetplantName() {
		return petplantName;
	}
	public void setPetplantName(String petplantName) {
		this.petplantName = petplantName;
	}
	public String getPetplantNum() {
		return petplantNum;
	}
	public void setPetplantNum(String petplantNum) {
		this.petplantNum = petplantNum;
	}
	public String getWaterDate() {
		return waterDate;
	}
	public void setWaterDate(String waterDate) {
		this.waterDate = waterDate;
	}
	public String getUsersNum() {
		return usersNum;
	}
	public void setUsersNum(String usersNum) {
		this.usersNum = usersNum;
	}

	public String getPetplantWterm() {
		return petplantWterm;
	}
	public void setPetplantWterm(String petplantWterm) {
		this.petplantWterm = petplantWterm;
	}
	@Override
	public String toString() {
		return "SpringCalendar [petplantNum=" + petplantNum + ", waterDate=" + waterDate + ", usersNum=" + usersNum
				+ ", petplantName=" + petplantName + ", usersName=" + usersName + ", petplantWterm=" + petplantWterm
				+ ", nextwday=" + nextwday + "]";
	}
	

	
}
