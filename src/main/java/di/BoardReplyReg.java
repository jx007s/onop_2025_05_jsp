package di;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model_p.BoardDAO;
import model_p.BoardDTO;

public class BoardReplyReg implements MvcAction{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		//기존글 가져오기 - gid, seq, lev
		BoardDTO dto = new BoardDAO().detail(Integer.parseInt(request.getParameter("id")));
		
		//작성내용 가져오기
		dto.setTitle(request.getParameter("title"));
		dto.setPname(request.getParameter("pname"));
		dto.setPw(request.getParameter("pw"));
		dto.setContent(request.getParameter("content"));

		//답변 작성
		new BoardDAO().reply(dto);
		
		String msg = "답변 작성되었습니다.";
		String goUrl = request.getContextPath()+"/board/BoardDetail?id="+dto.getId();
		
		System.out.println("BoardReplyReg 서비스 실행"+dto);
		
		request.setAttribute("msg", msg);
		request.setAttribute("goUrl", goUrl);
		
		request.setAttribute("mainUrl", "board/alert.jsp");
		
	}
	
	
}
