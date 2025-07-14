package model_p;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class BoardDAO {
	
	Connection con = null;
	PreparedStatement ptmt = null;
	ResultSet rs = null;

	public BoardDAO() {
		String url = "jdbc:mysql://localhost:3306/onop_db?characterEncoding=utf-8";
		String user = "onop";
		String pw = "123456";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url, user, pw);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<BoardDTO> list(){
		ArrayList<BoardDTO> res = new ArrayList<BoardDTO>();
		
		String sql = "select * from board order by gid desc";
		try {
			ptmt = con.prepareStatement(sql);
			rs = ptmt.executeQuery();
			
			while(rs.next()) {
				BoardDTO dto = new BoardDTO();
				
				dto.setId(rs.getInt("id"));
				dto.setGid(rs.getInt("gid"));
				dto.setSeq(rs.getInt("seq"));
				dto.setLev(rs.getInt("lev"));
				dto.setCnt(rs.getInt("cnt"));
				dto.setTitle(rs.getString("title"));
				dto.setPname(rs.getString("pname"));
				dto.setRegDate(rs.getTimestamp("reg_date"));
				
				res.add(dto);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		
		return res;
	}
	
	
	public BoardDTO detail(int id){
		BoardDTO dto = null;
		
		String sql = "select * from board where id = "+id;
		try {
			ptmt = con.prepareStatement(sql);
			rs = ptmt.executeQuery();
			
			if(rs.next()) {
				dto = new BoardDTO();
				
				dto.setId(rs.getInt("id"));
				dto.setGid(rs.getInt("gid"));
				dto.setSeq(rs.getInt("seq"));
				dto.setLev(rs.getInt("lev"));
				dto.setCnt(rs.getInt("cnt"));
				dto.setTitle(rs.getString("title"));
				dto.setPname(rs.getString("pname"));
				dto.setRegDate(rs.getTimestamp("reg_date"));
				dto.setUpfile(rs.getString("upfile"));
				dto.setContent(rs.getString("content"));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		
		return dto;
	}
	
	
	
	public void addCount(int id){
		BoardDTO dto = null;
		
		String sql = "update board set cnt = cnt + 1 where id = ? ";
		try {
			ptmt = con.prepareStatement(sql);
			
			ptmt.setInt(1, id);	// 1 번째 ? 에   id 대입
			
			ptmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
	}
	
	
	
	
	public void write(BoardDTO dto){
		// 새로 늘어갈 id 확인
		String sql = "select max(id) + 1 as max_id from board";
		try {
			ptmt = con.prepareStatement(sql);
			
			rs = ptmt.executeQuery();
			
			rs.next();
			
			int max_id = rs.getInt("max_id");
			
			System.out.println("max_id : "+max_id);
			
			sql = "insert into board "
				+ "(id ,gid ,seq ,lev ,cnt, title,  content,  pname,    pw ,  upfile,    reg_date) values "
				+ "( ? , ?  ,0     ,0,  -1 ,     ?    ,  ?    ,  ?     ,  ?   ,  ?     , now() )";
			
			ptmt = con.prepareStatement(sql);
			ptmt.setInt(1, max_id);
			ptmt.setInt(2, max_id);
			ptmt.setString(3, dto.getTitle());
			ptmt.setString(4, dto.getContent());
			ptmt.setString(5, dto.getPname());
			ptmt.setString(6, dto.getPw());
			ptmt.setString(7, dto.getUpfile());
			
			ptmt.executeUpdate();
			
			dto.setId(max_id);
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
	}
	
	
	
	
	public int delete(BoardDTO dto){
		
		int res = 0;
		
		String sql = "delete from board where id = ? and pw = ?";
		try {
			
			ptmt = con.prepareStatement(sql);
			ptmt.setInt(1, dto.getId());
			ptmt.setString(2, dto.getPw());
						
			res = ptmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		
		return res;
	}
	
	
	
	public void close() {
		if(rs!=null) try {rs.close();} catch (SQLException e) {}
		if(ptmt!=null) try {ptmt.close();} catch (SQLException e) {}
		if(con!=null) try {con.close();} catch (SQLException e) {}
	}
	
}

