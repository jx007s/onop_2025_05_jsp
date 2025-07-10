package di;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class BoardDetail implements MvcAction{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		System.out.println("BoardDetail 서비스 실행");
		
	}

}
