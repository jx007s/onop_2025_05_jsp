package basic_p;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class NoticeDTO {

	String title, pname;
	Date regDate;
	int cnt;
	SimpleDateFormat sdf = new SimpleDateFormat("yy-MM-dd HH:mm:ss");
	public NoticeDTO(String title, String pname, String regDate, int cnt) {
		this.title = title;
		this.pname = pname;
		try {
			this.regDate = sdf.parse(regDate);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		this.cnt = cnt;
	}
	public String getTitle() {
		return title;
	}
	public String getPname() {
		return pname;
	}
	public String getRegDate() {
		return sdf.format(regDate);
	}
	public int getCnt() {
		return cnt;
	}
	
	
	
	
}
