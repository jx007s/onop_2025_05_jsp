package di;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model_p.BoardDAO;
import model_p.BoardDTO;

public class BoardWriteForm implements MvcAction{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		
		System.out.println("BoardWriteForm 서비스 실행");
		
	}

}
