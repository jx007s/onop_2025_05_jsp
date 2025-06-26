package basic_p;

public class ReqStudDTO {

	private String pname;
	
	private int kor, eng, mat, tot, avg;

	// public 이어야 jsp 에서 접근가능
	public ReqStudDTO(String pname, String kor, String eng, String mat) {
		
		this.pname = pname;
		this.kor = Integer.parseInt(kor);
		this.eng = Integer.parseInt(eng);
		this.mat = Integer.parseInt(mat);
		calc();
	}
	
	private void calc() {
		tot = kor+eng+mat;
		avg = tot/3;
	}

	public String getPname() {
		return pname;
	}

	public int getKor() {
		return kor;
	}

	public int getEng() {
		return eng;
	}

	public int getMat() {
		return mat;
	}

	public int getTot() {
		return tot;
	}

	public int getAvg() {
		return avg;
	}
	
	public String trStr() {
		String ttt = "<tr>";
		ttt+="<td>"+pname+"</td>";
		ttt+="<td>"+kor+"</td>";
		ttt+="<td>"+eng+"</td>";
		ttt+="<td>"+mat+"</td>";
		ttt+="<td>"+tot+"</td>";
		ttt+="<td>"+avg+"</td>";
		ttt+="</tr>";
		return ttt;
	}
}
