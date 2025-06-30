package basic_p;

public class MemberDTO {

	String pid, pw, pname;

	public MemberDTO(String pid, String pw, String pname) {
		
		this.pid = pid;
		this.pw = pw;
		this.pname = pname;
	}

	public String getPid() {
		return pid;
	}

	public String getPw() {
		return pw;
	}

	public String getPname() {
		return pname;
	}
	
	
	
}
