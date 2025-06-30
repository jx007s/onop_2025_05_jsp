package basic_p;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;

/**
 * Servlet implementation class GetPostLogIn
 */
@WebServlet("/GetPostLogIn")
public class GetPostLogIn extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetPostLogIn() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		response.getWriter().println("<html>");
		response.getWriter().println("<body>");
		response.getWriter().println("<form method='post'>");
		response.getWriter().println("id <input name='pid'><br/>");
		response.getWriter().println("암호 <input name='pw'><br/>");
		response.getWriter().println("<input type='submit' value='로그인'>");
		response.getWriter().println("</form>");
		response.getWriter().println("</body>");
		response.getWriter().println("</html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 회원정보
		HashMap<String, MemberDTO> mems = new HashMap<String, MemberDTO>();
		mems.put("aaa",new MemberDTO("aaa","1111","지예금"));
		mems.put("bbb",new MemberDTO("bbb","2222","지예은"));
		mems.put("ccc",new MemberDTO("ccc","3333","지예동"));
		mems.put("ddd",new MemberDTO("ddd","4444","지예철"));
		mems.put("eee",new MemberDTO("eee","5555","지예납"));
		
		String res = "로그인실패";
		
		String pid = request.getParameter("pid");
		String pw = request.getParameter("pw");
		//System.out.println(pid+","+pw);
		
		if(mems.containsKey(pid)) {
			MemberDTO dto =  mems.get(pid);
			if(dto.pw.equals(pw)) {
				//System.out.println(pid+","+pw+" 일치");
				res = dto.pname+"님 안녕하세요";
			}
		}
		
		
		
		
		
		
		response.setContentType("text/html;charset=UTF-8");
		response.getWriter().println(res);
	}

}
