package di;

import java.util.ArrayList;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model_p.BoardDAO;
import model_p.BoardDTO;

public class BoardList implements MvcAction{

	// 6
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		int nowPage = 1;
		
		if(request.getParameter("nowPage")!=null) {
			nowPage = Integer.parseInt(request.getParameter("nowPage"));
		}
		
		
		int cnt = 3;
		int start = (nowPage-1)*cnt;
		
		// 6, 8 						// 7 
		ArrayList<BoardDTO> data = new BoardDAO().list(start, cnt);
		
		// view에 data 보내기
		request.setAttribute("mainData", data);

		System.out.println("BoardList 서비스 실행 : "+data);
		
	}

}
