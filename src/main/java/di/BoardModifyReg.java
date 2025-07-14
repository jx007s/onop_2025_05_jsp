package di;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model_p.BoardDAO;
import model_p.BoardDTO;
import model_p.PageDTO;

public class BoardModifyReg implements MvcAction{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		PageDTO pDTO = new PageDTO(request);
		BoardDTO dto = new BoardDTO();
		dto.setTitle(request.getParameter("title"));
		dto.setPname(request.getParameter("pname"));
		dto.setPw(request.getParameter("pw"));
		dto.setContent(request.getParameter("content"));
		dto.setId(Integer.parseInt(request.getParameter("id")));
		
		String msg = "암호 불일치";
		String goUrl = request.getContextPath()+"/board/BoardModifyForm?id="+dto.getId()+"&nowPage="+pDTO.getNowPage();
		

		
		if(0 < new BoardDAO().modify(dto)) {
			msg = "수정되었습니다.";
			goUrl = request.getContextPath()+"/board/BoardDetail?id="+dto.getId()+"&nowPage="+pDTO.getNowPage();
		}
		
		System.out.println("BoardModifyReg 서비스 실행"+dto);
		
		request.setAttribute("msg", msg);
		request.setAttribute("goUrl", goUrl);
		
		request.setAttribute("mainUrl", "board/alert.jsp");
		
	}
	
	
}
