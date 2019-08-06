package users;

public class Users {

	String users_id;
	String users_pw;
	String users_name;
	String users_gender;
	String users_email;
	String users_phone;
	String users_birthday;
	String users_Number;
	
	

	// 드롭다운에 이용하는 변수 // 
	String group_num;
	String group_name;
	String area;
	
	
	
	public String getGroup_num() {
		return group_num;
	}
	public void setGroup_num(String group_num) {
		this.group_num = group_num;
	}
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
	public String getUsers_Number() {
		return users_Number;
	}
	public void setUsers_Number(String users_Number) {
		this.users_Number = users_Number;
	}
	public String getUsers_id() {
		return users_id;
	}
	public void setUsers_id(String users_id) {
		this.users_id = users_id;
	}
	public String getUsers_pw() {
		return users_pw;
	}
	public void setUsers_pw(String users_pw) {
		this.users_pw = users_pw;
	}
	public String getUsers_name() {
		return users_name;
	}
	public void setUsers_name(String users_name) {
		this.users_name = users_name;
	}
	public String getUsers_gender() {
		return users_gender;
	}
	public void setUsers_gender(String users_gender) {
		this.users_gender = users_gender;
	}
	public String getUsers_email() {
		return users_email;
	}
	public void setUsers_email(String users_email) {
		this.users_email = users_email;
	}
	public String getUsers_phone() {
		return users_phone;
	}
	public void setUsers_phone(String users_phone) {
		this.users_phone = users_phone;
	}
	public String getUsers_birthday() {
		return users_birthday;
	}
	public void setUsers_birthday(String users_birthday) {
		this.users_birthday = users_birthday;
	}
	
	
	@Override
	public String toString() {
		return "Users [users_id=" + users_id + ", users_pw=" + users_pw + ", users_name=" + users_name
				+ ", users_gender=" + users_gender + ", users_email=" + users_email + ", users_phone=" + users_phone
				+ ", users_birthday=" + users_birthday + ", users_Number=" + users_Number + ", group_num=" + group_num
				+ ", group_name=" + group_name + ", area=" + area + "]";
	}
	
	
	
}
