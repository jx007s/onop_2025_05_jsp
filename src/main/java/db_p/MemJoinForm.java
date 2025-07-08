package db_p;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

/**
 * Servlet implementation class MemJoinForm
 */
@WebServlet("/MemJoinForm")
public class MemJoinForm extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemJoinForm() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// forward, include  할 수있는 객체 RequestDispatcher 가져오기 
		RequestDispatcher dispatcher = request.getRequestDispatcher("/db/memJoinForm.jsp");
		
		//  forward 
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		Mem2DTO dto = new Mem2DTO();
		
		try {
			dto.setId(request.getParameter("id"));
			dto.setName(request.getParameter("name"));
			dto.setBirth(sdf.parse(request.getParameter("birth")  ));
			dto.setHeight(Integer.parseInt(request.getParameter("height") ) );
			dto.setMail(Integer.parseInt(request.getParameter("mail") ) );
			
			System.out.println(dto);
			int ret = new Mem2DAO().write(dto);
			System.out.println(ret);
			
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		// 회원가입처리 후 목록으로 이동
		response.sendRedirect("MemList3");
	}

}
