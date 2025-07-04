package file_p;

import jakarta.servlet.ServletException;
import jakarta.servlet.ServletOutputStream;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.FileInputStream;
import java.io.IOException;
import java.net.URLEncoder;

/**
 * Servlet implementation class DownloadReg
 */
@WebServlet("/DownloadReg")
public class DownloadReg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DownloadReg() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//다운로드로 변경
		
		String fileName = request.getParameter("fileName");
		
		String enName = URLEncoder.encode(fileName,"UTF-8");
		
		//1. 다운로드로 변경
		response.setHeader("Content-Disposition", "attachment;filename="+enName);
		
		String path = request.getServletContext().getRealPath("fff/"+fileName);
		
		//2. 파일 읽기
		FileInputStream fis = new FileInputStream(path);
		
		//3. 파일 쓰기
		ServletOutputStream sos = response.getOutputStream();
		
		//4. 파일 내용전송
		byte [] buf = new byte[1024];
		
		while(fis.available()>0) {
			int len = fis.read(buf);
			sos.write(buf,0,len);
		}
		
		
		//5. 스트림 종료
		sos.close();
		fis.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

/*
asdf 폴더 안의 파일들을 다운로드하는(클릭하여 다운로드) jsp 파일을 구현하세요
단 , 폴더는 다운로드 하지 않음
 * */
