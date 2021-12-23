package com.campus.service.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.campus.common.JDBCTemplate;
import com.campus.service.model.vo.Answer;
import com.campus.service.model.vo.Service;

public class ServiceDAO {

	public int writeService(Service s, Connection conn) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query = "INSERT INTO SERVICE VALUES(SERVICE_SEQ.NEXTVAL,?,?,?,?,?,SYSDATE,'N','N')";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, s.getUserId());
			pstmt.setString(2, s.getServiceType());
			pstmt.setString(3, s.getServiceSubject());
			pstmt.setString(4, s.getServiceContent());
			pstmt.setString(5, s.getServiceEmail());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(pstmt);
		}
		
		return result;
	}

	public ArrayList<Service> serviceList(Connection conn, int currentPage, int recordCountPerPage, String userId) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Service> list = new ArrayList<Service>();
		
		int start = currentPage * recordCountPerPage - (recordCountPerPage-1);
		int end = currentPage * recordCountPerPage;
		
		String query="SELECT * FROM (SELECT ROW_NUMBER() OVER(ORDER BY SERVICE_NO DESC) AS NUM, SERVICE.* "
				+ "FROM SERVICE WHERE SERVICE_DEL_YN='N' AND "
				+ "USER_ID=?) WHERE NUM BETWEEN ? AND ?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userId);
			pstmt.setInt(2, start);
			pstmt.setInt(3, end);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				Service s = new Service();
				s.setServiceNo(rset.getInt("service_no"));
				s.setServiceSubject(rset.getString("service_subject"));
				s.setServiceDate(rset.getDate("service_date"));
				s.setServiceAnswer(rset.getString("answer").charAt(0));
				
				list.add(s);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		return list;
	}

	public String getServicePageNavi(Connection conn, int naviCountPerPage, int currentPage, int recordCountPerPage,
			String userId) {
		int recordTotalCount = totalCount(conn,userId);
		
		int pageTotalCount = (int)Math.ceil(recordTotalCount/(double)recordCountPerPage);
		
		int startNavi = (((currentPage-1) / naviCountPerPage) * naviCountPerPage) + 1;
		int endNavi = startNavi + (naviCountPerPage-1);
		
		if(endNavi>pageTotalCount) {
			endNavi = pageTotalCount;
		}
		
		StringBuilder sb = new StringBuilder();
		if(startNavi!=1) {
			sb.append("<a href='/main/serviceList.do?currentPage="+(startNavi-1)+"'>< prev</a> ");
		}
		for(int i = startNavi; i<=endNavi; i++) {
			if(i==currentPage) {
				sb.append("<a href='/main/serviceList.do?currentPage="+i+"'><B style='font-siez:1.2em'>"+i+"</B></a> ");
			}else {
				sb.append("<a href='/main/serviceList.do?currentPage="+i+"'>"+i+"</a> ");
			}
		}
		if(endNavi!=pageTotalCount) {
			sb.append(" <a href='/main/serviceList.do?currentPage="+(endNavi+1)+"'>next ></a>");
		}
		
		return sb.toString();
	}

	private int totalCount(Connection conn, String userId) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		int count = 0;
		String query = "SELECT COUNT(*) AS count FROM SERVICE WHERE USER_ID=? AND SERVICE_DEL_YN='N'";
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setString(1, userId);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				count = rset.getInt("count");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		return count;
	}

	public Service serviceSelectContent(int serviceNo, Connection conn) {
		PreparedStatement pstmt = null;
		Service s = null;
		ResultSet rset = null;
		String query = "select * from service where service_no=?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, serviceNo);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				s = new Service();
				s.setServiceNo(rset.getInt("service_no"));
				s.setUserId(rset.getString("user_id"));
				s.setServiceType(rset.getString("service_type"));
				s.setServiceSubject(rset.getString("service_subject"));
				s.setServiceContent(rset.getString("service_content"));
				s.setServiceEmail(rset.getString("service_email"));
				s.setServiceDate(rset.getDate("service_date"));
				s.setServiceDelYN(rset.getString("service_del_yn").charAt(0));
				s.setServiceAnswer(rset.getString("answer").charAt(0));
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		return s;
	}

	public int updateService(Service s, Connection conn, int serviceNo) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query = "UPDATE SERVICE SET SERVICE_TYPE=?, SERVICE_SUBJECT=?, SERVICE_CONTENT=?, ANSWER='N' WHERE SERVICE_NO=?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, s.getServiceType());
			pstmt.setString(2, s.getServiceSubject());
			pstmt.setString(3, s.getServiceContent());
			pstmt.setInt(4, serviceNo);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(pstmt);
		}
		
		return result;
	}

	public ArrayList<Service> serviceList(Connection conn, int currentPage, int recordCountPerPage) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Service> list = new ArrayList<Service>();
		
		int start = currentPage * recordCountPerPage - (recordCountPerPage-1);
		int end = currentPage * recordCountPerPage;
		
		String query="SELECT * FROM (SELECT ROW_NUMBER() OVER(ORDER BY SERVICE_NO DESC) AS NUM, SERVICE.* "
				+ "FROM SERVICE WHERE SERVICE_DEL_YN='N') WHERE NUM BETWEEN ? AND ?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				Service s = new Service();
				s.setServiceNo(rset.getInt("service_no"));
				s.setServiceSubject(rset.getString("service_subject"));
				s.setServiceDate(rset.getDate("service_date"));
				s.setServiceAnswer(rset.getString("answer").charAt(0));
				
				list.add(s);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		return list;
	}

	public String getServicePageNavi(Connection conn, int naviCountPerPage, int currentPage, int recordCountPerPage) {
		int recordTotalCount = totalCount(conn);
		
		int pageTotalCount = (int)Math.ceil(recordTotalCount/(double)recordCountPerPage);
		
		int startNavi = (((currentPage-1) / naviCountPerPage) * naviCountPerPage) + 1;
		int endNavi = startNavi + (naviCountPerPage-1);
		
		if(endNavi>pageTotalCount) {
			endNavi = pageTotalCount;
		}
		
		StringBuilder sb = new StringBuilder();
		if(startNavi!=1) {
			sb.append("<a href='/main/serviceList.do?currentPage="+(startNavi-1)+"'>< prev</a> ");
		}
		for(int i = startNavi; i<=endNavi; i++) {
			if(i==currentPage) {
				sb.append("<a href='/main/serviceList.do?currentPage="+i+"'><B style='font-siez:1.2em'>"+i+"</B></a> ");
			}else {
				sb.append("<a href='/main/serviceList.do?currentPage="+i+"'>"+i+"</a> ");
			}
		}
		if(endNavi!=pageTotalCount) {
			sb.append(" <a href='/main/serviceList.do?currentPage="+(endNavi+1)+"'>next ></a>");
		}
		
		return sb.toString();
	}

	private int totalCount(Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		int count = 0;
		String query = "SELECT COUNT(*) AS count FROM SERVICE WHERE SERVICE_DEL_YN='N'";
		try {
			pstmt=conn.prepareStatement(query);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				count = rset.getInt("count");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		return count;
	}

	public int qnaAnswer(String answerContent, int serviceNo,Connection conn) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query = "INSERT INTO ANSWER VALUES(ANSWER_SEQ.NEXTVAL, ?, ?, SYSDATE)";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, serviceNo);
			pstmt.setString(2, answerContent);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(pstmt);
		}
		
		return result;
	}

	public Answer qnaAnswerContent(int serviceNo, Connection conn) {
		PreparedStatement pstmt =null;
		ResultSet rset = null;
		Answer a = null;
		String query = "SELECT * FROM (SELECT ROW_NUMBER() OVER(ORDER BY ANSWER_NO DESC) AS NUM, ANSWER.* FROM ANSWER WHERE SERVICE_NO=?) WHERE NUM=1";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, serviceNo);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				a = new Answer();
				a.setAnswerNo(rset.getInt("answer_no"));
				a.setServiceNo(rset.getInt("service_no"));
				a.setAnswerContent(rset.getString("answer_content"));
				a.setAnswerDate(rset.getDate("answer_date"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		return a;
	}

	public int serviceAnserYN(int serviceNo, Connection conn) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query = "UPDATE SERVICE SET ANSWER='Y' WHERE SERVICE_NO=?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, serviceNo);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(pstmt);
		}
		
		return result;
	}


}
