package db_p;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class Mem2DAO {
	
	Connection con = null;
	Statement stmt = null;
	ResultSet rs = null;

	
	public Mem2DAO() {
		
		String url = "jdbc:mysql://localhost:3306/onop_db?characterEncoding=utf-8";
		// jdbc:mysql://[dbms_IP]:[port]/[db이름]?characterEncoding=utf-8
		String user = "onop";
		String pw = "123456";
		
		try {
			//1. JDBC Driver 로드
			Class.forName("com.mysql.jdbc.Driver");

			//2. DB 연결 객체 생성		
			con = DriverManager.getConnection(url, user, pw);
			
			//3. 쿼리문 실행하기 위한 객체 생성
			stmt = con.createStatement();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	// 리스트 실행
	public Object list() {
		
		//view 페이지에 보낼 데이터
		ArrayList<Mem2DTO> memData = new ArrayList();
		
		//4. 쿼리문 실행
		String sql = "select * from mem2";
		
		try {
			rs = stmt.executeQuery(sql);
			
			System.out.println(rs);
			
			//5. 쿼리 실행 결과 호출
			while(rs.next()){
				
				// 튜플 1개 마다 dto 생성
				Mem2DTO dto = new Mem2DTO();
				
				// DB 튜플의 데이터를 dto에 대입
				dto.setId(rs.getString("id"));
				dto.setName(rs.getString("name"));
				dto.setHeight(rs.getInt("height"));
				dto.setMail(rs.getInt("mail"));
				dto.setBirth(rs.getDate("birth"));
				
				// list 항목에 dto 추가
				memData.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
			
		}finally {
							
			close();	// DB 닫기
		}
		
		return memData;
	}
	
	
	
	
	
	
	// 회원가입 실행
	public int write(Mem2DTO dto) {
			
		int ret = 0;
		
		//4. 쿼리문 실행
		String sql = "insert into mem2 "
				+ "(id, name, birth, height, mail) values "
				+ "('"+dto.getId()+"','"
				+dto.getName()+"','"
				+dto.getBirthStr()+"',"
				+dto.getHeight()+", "+
				dto.getMail()+")";
		
		System.out.println(sql);
		try {
			ret = stmt.executeUpdate(sql);
			
			System.out.println(ret);
			
		} catch (Exception e) {
			e.printStackTrace();
			
		}finally {
							
			close();	// DB 닫기
		}
		
		return ret;
	}
	
	
	
	public void close() {
		//6. 쿼리문 실행 객체 종료
		if(rs!=null)   { try {  rs.close();   } catch (SQLException e) {}	}
		if(stmt!=null) { try {  stmt.close(); } catch (SQLException e) {}	}
		//7. 연결 객체 종료
		if(con!=null)  { try {  con.close();  } catch (SQLException e) {}	}
		
	}
	
	
	
}
