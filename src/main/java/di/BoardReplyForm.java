package di;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model_p.BoardDAO;
import model_p.BoardDTO;

public class BoardReplyForm implements MvcAction{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		int id = Integer.parseInt(request.getParameter("id"));
		
		//데이터 가져오기
		BoardDTO dto = new 	BoardDAO().detail(id);
		request.setAttribute("dto", dto);
		
		System.out.println("BoardReplyForm 서비스 실행"+dto);
		
	}

}
