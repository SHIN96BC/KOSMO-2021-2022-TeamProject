package jeju.board.model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import jeju.board.domain.Board;
import static jeju.board.model.BoardSQL.*;

class BoardRepository {
	private DataSource ds;
	public BoardRepository() {
		try {
			Context initContext = new InitialContext();
			Context envContext = (Context)initContext.lookup("java:/comp/env");
			ds = (DataSource)envContext.lookup("jdbc/myoracle");
		}catch(NamingException ne) {
			System.out.println("NamingException: "+ ne);
		}
	}
	ArrayList<Board> listAll(){
		ArrayList<Board> listAll = new ArrayList<Board>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(LIST_ALL);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				long bNumber = rs.getLong(1);
				String nick = rs.getString(2);
				String subject = rs.getString(3);
				String kategorie = rs.getString(4);
				String tag = rs.getString(5);
				String content = rs.getString(6);
				long love = rs.getLong(7);
				long hate = rs.getLong(8);
				String bPhoto = rs.getString(9);
				String bOriPhoto = rs.getString(10);
				Date bDate = rs.getDate(11);
				Date upDate = rs.getDate(12);
				int division = rs.getInt(13);
				listAll.add(new Board(bNumber, nick, subject, kategorie, tag, content, love, hate, bPhoto, bOriPhoto, bDate, upDate, division));
			}
			return listAll;
		}catch(SQLException se) {
			return null;
		}finally {
			closeAll(con, pstmt, rs);
		}
	}
	boolean insert(Board board) {
		Connection con = null;
		PreparedStatement pstmt = null;
		try{
			con = ds.getConnection();
			pstmt = con.prepareStatement(INSERT);
			pstmt.setString(1, board.getNick());
			pstmt.setString(2, board.getSubject());
			pstmt.setString(3, board.getKategorie());
			pstmt.setString(4, board.getTag());
			pstmt.setString(5, board.getContent());
			pstmt.setString(6, board.getBphoto());
			pstmt.setString(7, board.getBoriphoto());
			pstmt.setInt(8, board.getDivision());
			int i = pstmt.executeUpdate();
			if(i>0) {
				return true;
			}else {
				return false;
			}
		}catch(SQLException se) {
			return false;
		}finally {
			closeAll(con, pstmt, null);
		}
	}
	void closeAll(Connection con, PreparedStatement pstmt, ResultSet rs) {
		try {
			if(rs != null) rs.close();
			if(pstmt != null) pstmt.close();
			if(con != null) con.close();
		}catch(SQLException se) {
		}
	}
}
