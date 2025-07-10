package di;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class BoardList implements MvcAction{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		System.out.println("BoardList 서비스 실행");
		
	}

}
