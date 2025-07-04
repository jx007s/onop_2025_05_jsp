package file_p;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.regex.Pattern;

/**
 * Servlet implementation class ResumeReg
 */
@WebServlet("/ResumeReg")
@MultipartConfig
public class ResumeReg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
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
		
		//System.out.println(pname+birth+addr);
		
		String goUrl = "file/resumeForm.jsp";
		//1개 가져오기
		Part pic = request.getPart("pic");
		String fileName = pic.getSubmittedFileName();
		int dotPos = fileName.lastIndexOf(".");
		String ext = fileName.substring(dotPos+1);
		
		//이미지 파일일 경우에만 저장 및 보기
		if(Pattern.matches("gif|png|jpeg|jpg|bmp", ext.toLowerCase())) {
			
			System.out.println(pic.getName()+","+pic.getContentType()+","+pic.getSize()+","+fileName);
			
			String dirPath = request.getServletContext().getRealPath("dsttt");
			dirPath = "D:\\public\\onop\\onop2025_05\\public\\study\\java_work\\jspPrj\\src\\main\\webapp\\dsttt";
			
			fileSave(dirPath, pic);
			
			
			String query = "?pname="+URLEncoder.encode(pname,"UTF-8");
			query += "&birth="+URLEncoder.encode(birth,"UTF-8");
			query += "&addr="+URLEncoder.encode(addr,"UTF-8");
			query += "&pic="+URLEncoder.encode(pic.getSubmittedFileName(),"UTF-8");
			
			goUrl = "file/resumeView.jsp"+query;
		}
		
		
		
		
		
		response.sendRedirect(goUrl);
	}
	
	void fileSave(String dirPath, Part pp) {
		try {
			pp.write(dirPath+"\\"+pp.getSubmittedFileName());
			pp.delete();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
