package groupinfo;

public class Groupmember {
	
	String users_num;
	String group_num;
	public String getUsers_num() {
		return users_num;
	}
	public void setUsers_num(String users_num) {
		this.users_num = users_num;
	}
	public String getGroup_num() {
		return group_num;
	}
	public void setGroup_num(String group_num) {
		this.group_num = group_num;
	}
	
	@Override
	public String toString() {
		return "Groupmember [users_num=" + users_num + ", group_num=" + group_num + "]";
	}

}
