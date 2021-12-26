package com.campus.reservation.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.campus.common.JDBCTemplate;
import com.campus.reservation.model.vo.CampingArea;

public class CampingAreaDAO {

	public ArrayList<CampingArea> selectAllList(Connection conn, int bsnNo, int currentPage, int recordCountPerPage) {
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<CampingArea> list = new ArrayList<CampingArea>();
		
		int start = currentPage * recordCountPerPage - (recordCountPerPage-1);
		int end = currentPage * recordCountPerPage;
		
		String query = " SELECT * "  
				+ "	 FROM (SELECT ROW_NUMBER() OVER(order BY B.CAMP_SEQ ASC) AS NUM,A.BUSINESS_NAME, B.CAMP_SEQ, B.BUSINESS_NO, B.CAMP_NO,"
							+ " B.CAMP_NAME,B.CAMP_TYPE, B.CAMP_PO,B.CAMP_MAXPO,B.CAMP_PRICE, B.RESERV_INFO, C.PATH||C.FILE_NAME FILENAME"
						+ " FROM BUSINESS A, CAMP B, CAMPIMG C"  
						+ " WHERE  A.BUSINESS_NO = B.BUSINESS_NO AND B.CAMP_SEQ = C.CAMP_SEQ AND A.BUSINESS_NO = ?"
				+ " )  WHERE NUM BETWEEN ? AND ? ";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, bsnNo);
			pstmt.setInt(2, start);
			pstmt.setInt(3, end);
			System.out.println("query::"+query);
			rset = pstmt.executeQuery();
			
		while(rset.next())
		{
			CampingArea campingArea = new CampingArea();
			
			campingArea.setCampSeq(rset.getInt("CAMP_SEQ"));
			campingArea.setBusinessNo(rset.getInt("BUSINESS_NO"));
			campingArea.setBusinessName(rset.getString("BUSINESS_NAME"));
			campingArea.setCampNo(rset.getString("CAMP_NO"));
			campingArea.setCampName(rset.getString("CAMP_NAME"));
			campingArea.setCampType(rset.getString("CAMP_TYPE"));
			campingArea.setCampPo(rset.getInt("CAMP_PO"));
			campingArea.setCampMaxpo(rset.getInt("CAMP_MAXPO"));
			campingArea.setCampPrice(rset.getLong("CAMP_PRICE"));
			campingArea.setReservInfo(rset.getString("RESERV_INFO"));
			campingArea.setFilename(rset.getString("FILENAME"));
			
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

	public int totalCount(Connection conn, int bsnNo) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		int count = 0;
		
		String query = "SELECT COUNT(*) CNT " 
				 + " FROM BUSINESS A, CAMP B "
				 + " WHERE  A.BUSINESS_NO = B.BUSINESS_NO" 
				 + " AND A.BUSINESS_NO = ?"; 
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, bsnNo);
			rset = pstmt.executeQuery();
			
			if(rset.next()) 
			{
				count = rset.getInt("CNT");
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

	public String getPageNavi(Connection conn, int bsnNo, int naviCountPerPage, int recordCountPerPage, int currentPage) {

		int recordTotalCount = totalCount(conn, bsnNo); //전체 글 개수
		System.out.println("recordTotalCount::"+recordTotalCount);
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
			sb.append("<a href='/reservation/SelectCampingAreaList.do?currentPage="+(startNavi-1)+"'>< Prev</a>  ");
		}
		for(int i = startNavi; i<=endNavi; i++)
		{
			if(i==currentPage)
			{
				sb.append("<a href='/reservation/SelectCampingAreaList.do?currentPage="+i+"'><B style='font-size:1.2em'>"+i+"</B></a> ");
			}else
			{
				sb.append("<a href='/reservation/SelectCampingAreaList.do?currentPage="+i+"'> "+i+" </a> ");
			}
		}
		if(endNavi!=pageTotalCount)
		{
			sb.append("<a href='/reservation/SelectCampingAreaList.do?currentPage="+(endNavi+1)+"'> Next></a>  ");
		}
		
		//System.out.println(sb.toString());
		
		return sb.toString();
	}

	
	
	
	
	
	
	public ArrayList<CampingArea> selectMainList(Connection conn, int currentPage, int recordCountPerPage) {

		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<CampingArea> list = new ArrayList<CampingArea>();
		
		int start = currentPage * recordCountPerPage - (recordCountPerPage-1);
		int end = currentPage * recordCountPerPage;
		
		String query = " SELECT * FROM (SELECT ROW_NUMBER() OVER(order BY a.BUSINESS_NO ASC) AS NUM,  a.BUSINESS_NO, b.business_name, a.camp_type, b.business_address , c.PATH||c.FILE_NAME FILENAME" + 
				"		 FROM CAMP a, BUSINESS b, CAMPIMG c" + 
				" where a.business_no = b.business_no and a.CAMP_SEQ = c.CAMP_SEQ" + 
				" and a.CAMP_SEQ not in (select CAMP_SEQ" + 
				"        From RESERVATION " + 
				"        where del_yn = 'N'" + 
				"        and to_number('20211225') between RESERV_STA  and RESERV_END)" + 
				" and b.business_withdrawal = 'N'" + 
				" group by a.BUSINESS_NO, b.business_name, a.camp_type, b.business_address, c.PATH, c.FILE_NAME" + 
				" order by a.BUSINESS_NO" +
				" )  WHERE NUM BETWEEN ? AND ? ";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			System.out.println("query::"+query);
			rset = pstmt.executeQuery();
			
		while(rset.next())
		{
			CampingArea campingArea = new CampingArea();
			
			campingArea.setBusinessNo(rset.getInt("BUSINESS_NO"));
			campingArea.setBusinessName(rset.getString("BUSINESS_NAME"));
			campingArea.setCampType(rset.getString("CAMP_TYPE"));
			campingArea.setBusinessAddress(rset.getString("BUSINESS_ADDRESS"));
			campingArea.setFilename(rset.getString("FILENAME"));
			
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

	public String getMainPageNavi(Connection conn, int naviCountPerPage, int recordCountPerPage, int currentPage) {
		int recordTotalCount = mainTotalCount(conn); //전체 글 개수
		System.out.println("recordTotalCount::"+recordTotalCount);
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
			sb.append("<a href='/reservation/SelectCampingList.do?currentPage="+(startNavi-1)+"'>< Prev</a>  ");
		}
		for(int i = startNavi; i<=endNavi; i++)
		{
			if(i==currentPage)
			{
				sb.append("<a href='/reservation/SelectCampingList.do?currentPage="+i+"'><B style='font-size:1.2em'>"+i+"</B></a> ");
			}else
			{
				sb.append("<a href='/reservation/SelectCampingList.do?currentPage="+i+"'> "+i+" </a> ");
			}
		}
		if(endNavi!=pageTotalCount)
		{
			sb.append("<a href='/reservation/SelectCampingList.do?currentPage="+(endNavi+1)+"'> Next></a>  ");
		}
		
		//System.out.println(sb.toString());
		
		return sb.toString();
	}

	private int mainTotalCount(Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		int count = 0;
		
		String query = "SELECT count(*) CNT from ( "+ 
				"    SELECT a.BUSINESS_NO, b.business_name, a.camp_type, b.business_address" + 
				"        from camp a, BUSINESS b" + 
				"        where a.business_no = b.business_no" + 
				"        and a.CAMP_SEQ not in (select CAMP_SEQ" + 
				"                From RESERVATION " + 
				"                where del_yn = 'N'" + 
				"                and to_number('20211225') between RESERV_STA  and RESERV_END)" + 
				"        and b.business_withdrawal = 'N'" + 
				"        group by a.BUSINESS_NO, b.business_name, a.camp_type, b.business_address" + 
				"    ) "; 
		
		try {
			pstmt = conn.prepareStatement(query);
			rset = pstmt.executeQuery();
			
			if(rset.next()) 
			{
				count = rset.getInt("CNT");
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
