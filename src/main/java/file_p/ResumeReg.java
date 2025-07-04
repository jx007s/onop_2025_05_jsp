package file_p;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.URLEncoder;

/**
 * Servlet implementation class ResumeReg
 */
@WebServlet("/ResumeReg")
@MultipartConfig
public class ResumeReg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ResumeReg() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pname=request.getParameter("pname");
		String birth=request.getParameter("birth");
		String addr=request.getParameter("addr");
		
		System.out.println(pname+birth+addr);
		
		String query = "?pname="+URLEncoder.encode(pname,"UTF-8");
		query += "&birth="+URLEncoder.encode(birth,"UTF-8");
		query += "&addr="+URLEncoder.encode(addr,"UTF-8");
		
		response.sendRedirect("file/resumeView.jsp"+query);
	}

}
