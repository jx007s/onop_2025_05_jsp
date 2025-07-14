package model_p;

import jakarta.servlet.http.HttpServletRequest;

public class PageDTO {

	int cnt = 3;
	int nowPage, start, totalCnt, totalPage; 
	
	public PageDTO(HttpServletRequest request) {
		
		if(request.getParameter("nowPage")!=null) {
			nowPage = Integer.parseInt(request.getParameter("nowPage"));
		}
		
		start   = (nowPage-1)*cnt;
	}

	public int getCnt() {
		return cnt;
	}

	public void setCnt(int cnt) {
		this.cnt = cnt;
	}

	public int getNowPage() {
		return nowPage;
	}

	public void setNowPage(int nowPage) {
		this.nowPage = nowPage;
		start   = (nowPage-1)*cnt;
	}

	public int getStart() {
		return start;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalCnt(int totalCnt) {
		this.totalCnt = totalCnt;
		totalPage = totalCnt/cnt;
			
		if(totalCnt % cnt != 0) {
			totalPage++;
		}
	}

	@Override
	public String toString() {
		return "PageDTO [cnt=" + cnt + ", nowPage=" + nowPage + ", start=" + start + ", totalCnt=" + totalCnt
				+ ", totalPage=" + totalPage + "]";
	}

	
}
