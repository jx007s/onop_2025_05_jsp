package db_p;

import java.util.Date;

public class Mem2DTO {

	String id, name;
	Integer mail, height;
	Date birth;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getMail() {
		return mail;
	}
	public void setMail(Integer mail) {
		this.mail = mail;
	}
	public Integer getHeight() {
		return height;
	}
	public void setHeight(Integer height) {
		this.height = height;
	}
	public Date getBirth() {
		return birth;
	}
	public void setBirth(Date birth) {
		this.birth = birth;
	}
	@Override
	public String toString() {
		return "Mem2DTO [id=" + id + ", name=" + name + ", mail=" + mail + ", height=" + height + ", birth=" + birth
				+ "]";
	}
}
