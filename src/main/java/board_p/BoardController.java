package board_p;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import di.MvcAction;

/**
 * Servlet implementation class BoardController
 */
@WebServlet("/board/*")
public class BoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		response.setContentType("text/html;charset=UTF-8");
//		System.out.println(request.getRequestURI());
		System.out.println(request.getContextPath()+"/board/");
//		System.out.println(  (request.getContextPath()+"/board/").length()   );
		
		String cate = "board";
		
		String service = request.getRequestURI().substring(
				(request.getContextPath()+"/"+cate+"/").length());
		System.out.println(service);
		
		String mainUrl = cate+"/"+service+".jsp";
		
		//MvcAction action = new di.BoardList();
		try {
			
			request.setAttribute("mainUrl", mainUrl);
			
			//5. service 가기
			MvcAction action = (MvcAction)Class.forName("di."+service).newInstance();
			action.execute(request, response);
			
			
			
			//9 --> 10 template
			RequestDispatcher dispatcher = request.getRequestDispatcher("/views/template.jsp");
			dispatcher.forward(request, response);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
