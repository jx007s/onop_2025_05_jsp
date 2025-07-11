package model_p;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

public class BoardDTO {
	Integer id,gid, seq, lev, cnt;
    String title,content, pname, pw, upfile;
    Date regDate;
    
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getGid() {
		return gid;
	}
	public void setGid(Integer gid) {
		this.gid = gid;
	}
	public Integer getSeq() {
		return seq;
	}
	public void setSeq(Integer seq) {
		this.seq = seq;
	}
	public Integer getLev() {
		return lev;
	}
	public void setLev(Integer lev) {
		this.lev = lev;
	}
	public Integer getCnt() {
		return cnt;
	}
	public void setCnt(Integer cnt) {
		this.cnt = cnt;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getUpfile() {
		if(upfile != null && upfile.trim().equals("")) {
			upfile = null;
		}
		
		return upfile;
	}
	
	public boolean isImg() {
		
		if(getUpfile() == null) {
			return false;
		}
		
		String nowExt = upfile.toLowerCase().substring(upfile.lastIndexOf(".")+1);
		
		ArrayList<String> imgExts = new ArrayList<String>();
		for(String ext: "jpg,jpeg,bmp,gif,png".split(",")) {
			imgExts.add(ext);
		}
		
		return imgExts.contains(nowExt);
	}
	
	
	public void setUpfile(String upfile) {
		this.upfile = upfile;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	
	public String getRegDateStr() {
		return sdf.format(regDate);
	}
	public void setRegDateStr(String regDate) {
		try {
			this.regDate = sdf.parse(regDate);
		} catch (ParseException e) {
			e.printStackTrace();
		}
	}
	
	
	@Override
	public String toString() {
		return "BoardDTO [id=" + id + ", gid=" + gid + ", seq=" + seq + ", lev=" + lev + ", cnt=" + cnt + ", title="
				+ title + ", content=" + content + ", pname=" + pname + ", pw=" + pw + ", upfile=" + upfile
				+ ", regDate=" + regDate + "]";
	}
	
	
}
