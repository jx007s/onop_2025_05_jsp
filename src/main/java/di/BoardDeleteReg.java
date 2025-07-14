package di;

import java.io.File;
import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import model_p.BoardDAO;
import model_p.BoardDTO;

public class BoardDeleteReg implements MvcAction{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		BoardDTO dto = new BoardDTO();
		
		dto.setId(Integer.parseInt(request.getParameter("id")));
		dto.setPw(request.getParameter("pw"));
		
		// 파일 정보 가져오는 dto
		BoardDTO upfileDto = new BoardDAO().detail(dto.getId());
		
		String msg = "암호 불일치";
		String goUrl = request.getContextPath()+"/board/BoardDeleteForm?id="+dto.getId();
		
		int cnt = new BoardDAO().delete(dto);
		
		if(cnt>0) {
			
			//파일이 존재하면 파일삭제
			if(upfileDto.getUpfile()!=null) {
				String dirPath = request.getServletContext().getRealPath("fff")+"\\";
				
				//이클립스용 - 배포할 경우 주석처리 한다
				dirPath = "D:\\public\\onop\\onop2025_05\\public\\study\\java_work\\jspPrj\\src\\main\\webapp\\fff\\";
				
				//파일 삭제
				new File(dirPath+upfileDto.getUpfile()).delete();
			}
			
			msg = "삭제되었습니다.";
			goUrl = request.getContextPath()+"/board/BoardList";
		}
		
		System.out.println("BoardDeleteReg 서비스 실행"+cnt+dto);
		
		request.setAttribute("msg", msg);
		request.setAttribute("goUrl", goUrl);
		
		request.setAttribute("mainUrl", "board/alert.jsp");
		
	}
	
}

