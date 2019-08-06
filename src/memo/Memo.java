package memo;

import java.sql.Date;

public class Memo {

	Integer memoNum;
	Integer usersNum;
	Integer petplantNum;
	Date memoTime;
	String memoCon;
	Boolean memoPublic;
	
	
	public Integer getMemoNum() {
		return memoNum;
	}
	public void setMemoNum(Integer memoNum) {
		this.memoNum = memoNum;
	}
	public Integer getUsersNum() {
		return usersNum;
	}
	public void setUsersNum(Integer usersNum) {
		this.usersNum = usersNum;
	}
	public Integer getPetplantNum() {
		return petplantNum;
	}
	public void setPetplantNum(Integer petplantNum) {
		this.petplantNum = petplantNum;
	}
	public Date getMemoTime() {
		return memoTime;
	}
	public void setMemoTime(Date memoTime) {
		this.memoTime = memoTime;
	}
	public String getMemoCon() {
		return memoCon;
	}
	public void setMemoCon(String memoCon) {
		this.memoCon = memoCon;
	}
	public Boolean getMemoPublic() {
		return memoPublic;
	}
	public void setMemoPublic(Boolean memoPublic) {
		this.memoPublic = memoPublic;
	}

	@Override
	public String toString() {
		return "Users [memoNum=" + memoNum + ", usersNum=" + usersNum + ", petplantNum=" + petplantNum
				+ ", memoTime=" + memoTime + ", memoCon=" + memoCon + ", memoPublic=" +memoPublic
				+ "]";
	}
	
	

}
