package model_p;

import jakarta.servlet.http.HttpServletRequest;

public class PageDTO {

	int cnt = 3, pageCnt = 4;
	int nowPage=1, start, totalCnt, totalPage, startPage, endPage; 
	
	public PageDTO(HttpServletRequest request) {
		
		if(request.getParameter("nowPage")!=null) {
			nowPage = Integer.parseInt(request.getParameter("nowPage"));
		}
		
		start   = (nowPage-1)*cnt;
		
		startPage = (nowPage-1) / pageCnt * pageCnt +1; 
		endPage = startPage + pageCnt -1;
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
		
		if(endPage > totalPage) {
			endPage = totalPage;
		}
	}
	
	

	public int getStartPage() {
		return startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	@Override
	public String toString() {
		return "PageDTO [cnt=" + cnt + ", pageCnt=" + pageCnt + ", nowPage=" + nowPage + ", start=" + start
				+ ", totalCnt=" + totalCnt + ", totalPage=" + totalPage + ", startPage=" + startPage + ", endPage="
				+ endPage + "]";
	}

	
}
