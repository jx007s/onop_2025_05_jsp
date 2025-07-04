package file_p;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.IOException;
import java.util.Collection;




@WebServlet("/UploadReg1")
@MultipartConfig			// 업로드된 파일 정보 가져오기
public class UploadReg1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UploadReg1() {
        super();
        // TODO Auto-generated constructor stub
    }

	
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		response.getWriter().
		append("reg1 입니다.<br/>")
		.append(request.getParameter("pid")+"<br/>")
		.append(request.getParameter("pname")+"<br/>")
		
		// multipart/form-data 인 경우 type="file"의 파일명이 null 로 출력
		.append(request.getParameter("upfile")+"<br/>")
		;
		
		// multipart/form-data 가 필수
		//파라미터를 받는다
		Collection<Part> pps = request.getParts();
		
		//절대경로
		System.out.println(request.getServletContext().getRealPath("dsttt"));
		
		
		for (Part part : pps) {
			System.out.println(part.getName()+":"+part.getContentType()+","+part.getSize()+","+part.getSubmittedFileName());
			
			if(part.getName().equals("upfile")) { //파라미터 이름이 upfile(파일이라면)
				
				//파일크기가 0보다 크다면 (파일이 존재한다면)
				//파일이름이 있다면(파일이 존재한다면)
				if(part.getSize()>0 || part.getSubmittedFileName().trim().length()>0) {  
					//파일저장메소드실행
					fileSave(part);
				}
				
			}
		}
		
		/*
		pid:null,3,null  : 일반 파라미터 - 정보 없음 , reqest.getParameter() 로 확인
		pname:null,15,null
		upfile:image/jpeg,4252067,20240212_141253.jpg : 파일인 경우 ContentType, 파일크기, 파일명   확인
		*/
		
		
	}
	
	//파일 저장 메소드
	void fileSave(Part pp) {
		String dirName = "D:\\public\\onop\\onop2025_05\\public\\study\\java_work\\jspPrj\\src\\main\\webapp\\dsttt\\";
		try {
			pp.write(dirName+pp.getSubmittedFileName());  //파일 저장
			pp.delete();		// 브라우져의 임시폴더에 있는 파일 삭제
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
