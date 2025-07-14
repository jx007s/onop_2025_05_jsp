package di;

import java.util.ArrayList;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model_p.BoardDAO;
import model_p.BoardDTO;
import model_p.PageDTO;

public class BoardList implements MvcAction{

	// 6
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		PageDTO pDTO = new PageDTO(request);
		
		// 6, 8 						// 7 
		ArrayList<BoardDTO> data = new BoardDAO().list(pDTO);
		
		// 게시물 갯수 구하기
		pDTO.setTotalCnt(new BoardDAO().totalCnt());
		
		
		// view에 data 보내기
		request.setAttribute("mainData", data);
		
		request.setAttribute("pDTO", pDTO);

		System.out.println("BoardList 서비스 실행 : "+pDTO);
		
	}

}
