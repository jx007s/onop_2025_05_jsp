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
		// 6, 8 						// 7 
		ArrayList<BoardDTO> data = new BoardDAO().list();
		
		// view에 data 보내기
		request.setAttribute("mainData", data);

		System.out.println("BoardList 서비스 실행 : "+data);
		
	}

}
