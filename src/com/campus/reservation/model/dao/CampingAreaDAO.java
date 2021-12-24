package com.campus.reservation.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.campus.common.JDBCTemplate;
import com.campus.reservation.model.vo.CampingArea;

public class CampingAreaDAO {

	public static ArrayList<CampingArea> selectAllList(Connection conn, int currentPage, int recordCountPerPage) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<CampingArea> list = new ArrayList<CampingArea>();
		
		int start = currentPage * recordCountPerPage - (recordCountPerPage-1);
		int end = currentPage * recordCountPerPage;
		
		String query = " SELECT * "  
				+ "	 FROM (SELECT ROW_NUMBER() OVER(order BY CAMP_SEQ ASC) AS NUM, CAMP_SEQ, BUSINESS_NO,CAMP_NO,CAMP_NAME,CAMP_TYPE"
				+ ", CAMP_PO,CAMP_MAXPO,CAMP_PRICE,CHECKIN,CHECKOUT,RESERV_NOTICE"
				+ ", RESERV_INFO,REG_DATE  FROM CAMP "
				+ " )  WHERE NUM BETWEEN ? AND ? ";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			System.out.println("query::"+query);
			rset = pstmt.executeQuery();
			
		while(rset.next())
		{
			CampingArea campingArea = new CampingArea();
			
			campingArea.setCampSeq(rset.getInt("CAMP_SEQ"));
			campingArea.setBusinessNo(rset.getInt("BUSINESS_NO"));
			campingArea.setCampNo(rset.getString("CAMP_NO"));
			campingArea.setCampName(rset.getString("CAMP_NAME"));
			campingArea.setCampType(rset.getString("CAMP_TYPE"));
			campingArea.setCampPo(rset.getInt("CAMP_PO"));
			campingArea.setCampMaxpo(rset.getInt("CAMP_MAXPO"));
			campingArea.setCampPrice(rset.getLong("CAMP_PRICE"));
			campingArea.setCheckin(rset.getString("CHECKIN"));
			campingArea.setCheckout(rset.getString("CHECKOUT"));
			campingArea.setReservNotice(rset.getString("RESERV_NOTICE"));
			campingArea.setReservInfo(rset.getString("RESERV_INFO"));
			campingArea.setRegDate(rset.getDate("REG_DATE"));
			
			list.add(campingArea);
		}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return list;
	}

	
	public String getPageNavi(Connection conn, int naviCountPerPage, int recordCountPerPage, int currentPage) {

		int recordTotalCount = totalCount(conn); //전체 글 개수
		
		int pageTotalCount = 0; //전체 페이지 개수
		
		
		
		//페이지 내비 공식(1번째 방법)
		if((recordTotalCount % recordCountPerPage) > 0)
		{
			pageTotalCount = (recordTotalCount / recordCountPerPage) + 1;
		}else
		{
			pageTotalCount = recordTotalCount / recordCountPerPage;
		}
		
		int startNavi = (((currentPage-1) / naviCountPerPage) * naviCountPerPage) + 1 ;
		int endNavi = startNavi + (naviCountPerPage-1);

		//만약 공식으로 구한 endNavi가 총 Page 수보다 크다면 총 Page 수로 셋팅하는 코드
		if(endNavi > pageTotalCount)
		{
			endNavi = pageTotalCount;
		}
		
		// PageNavi 모양 만들기
		StringBuilder sb = new StringBuilder();

		
		if(startNavi!=1)
		{
			sb.append("<a href='/board/boardAllSelect.do?currentPage="+(startNavi-1)+"'>< Prev</a>  ");
		}
		for(int i = startNavi; i<=endNavi; i++)
		{
			if(i==currentPage)
			{
				sb.append("<a href='/board/boardAllSelect.do?currentPage="+i+"'><B style='font-size:1.2em'>"+i+"</B></a> ");
			}else
			{
				sb.append("<a href='/board/boardAllSelect.do?currentPage="+i+"'> "+i+" </a> ");
			}
		}
		if(endNavi!=pageTotalCount)
		{
			sb.append("<a href='/board/boardAllSelect.do?currentPage="+(endNavi+1)+"'> Next></a>  ");
		}
		
		//System.out.println(sb.toString());
		
		return sb.toString();
	}

	
	
	
	
	public int totalCount(Connection conn)
	{
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		int count = 0;
		
		String query = "SELECT COUNT(*) as count FROM CAMP ";
		
		try {
			pstmt = conn.prepareStatement(query);
			rset = pstmt.executeQuery();
			
			if(rset.next()) 
			{
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
}
