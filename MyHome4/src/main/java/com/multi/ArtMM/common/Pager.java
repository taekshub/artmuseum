package com.multi.ArtMM.common;

import javax.servlet.http.HttpServletRequest;



public class Pager {
		 
	//함수, 페이지 태그를 만드는 함수 
	//<a href= .....
	public static String makeTag(HttpServletRequest request , int pageSize , int total) {
		String Tag = "" ; 
		String contextPath = request.getContextPath();
		
		/*우리성택이 페이징하니 ㅇㅅㅇ*/
		
		int cpage; //현재페이지 정보
		int pageTotal; //전체 페이지 개수 
		int pageGroupSize = 5;
		//한 그룹당 보여질 페이지 수
		int pageGroupStart; //1,6,11,16,...
		int pageGroupEnd;//5,10,15,....

		String path="";
		//System.out.println(path);
		String beginLabel 	= "<img src=\"" + contextPath + "/resources/images/board/def/pg_first.gif\" alt=\"ù ������\" />		";
		String prevLabel 	= "<img src=\"" + contextPath + "/resources/images/board/def/pg_prev.gif\" alt=\"���� ������\" />";
		String nextLabel 	= "<img src=\"" + contextPath + "/resources/images/board/def/pg_next.gif\" alt=\"���� ������\" />";
		String endLabel 	= "		<img src=\"" + contextPath + "/resources/images/board/def/pg_last.gif\" alt=\"������ ������\" />";	

		/*<div class="pg">

		<a href="#" class="f"><img src="<%=contextPath%>/admin/images/board/def/pg_first.gif" alt="ù ������" /></a>
		<a href="#" class="p"><img src="<%=contextPath%>/admin/images/board/def/pg_prev.gif" alt="���� ������" /></a>
		<ul>
			<li class="on"><strong>1</strong></li>
			<li><a href="#">2</a></li>
			<li><a href="#">3</a></li>
			<li><a href="#">4</a></li>
			<li><a href="#">5</a></li>
			<li><a href="#">6</a></li>
			<li><a href="#">7</a></li>
			<li><a href="#">8</a></li>
			<li><a href="#">9</a></li>
			<li class="last"><a href="#">10</a></li>
		</ul>
		<a href="#" class="n"><img src="<%=contextPath%>/admin/images/board/def/pg_next.gif" alt="���� ������" /></a>
		<a href="#" class="l"><img src="<%=contextPath%>/admin/images/board/def/pg_last.gif" alt="������ ������" /></a>

	</div>*/
		
		try {

			StringBuffer sb = new StringBuffer();
			
			String page = request.getParameter("pg") ;
			page = ( page == null ) ? "0" : page ; 
			
//			setPg(Integer.parseInt(page)) ; 
//			setTotalCnt(Integer.parseInt(totCnt)) ; 
	
			cpage = Integer.parseInt(page) ; 

			pageTotal = (total - 1) / pageSize;
			//total - 전체 데이터 건수 
			//전체 페이지 개수 구하기 
           
			pageGroupStart = (int) (cpage / pageGroupSize) * pageGroupSize;
			pageGroupEnd = pageGroupStart + pageGroupSize;
			if (pageGroupEnd > pageTotal) {
				pageGroupEnd = pageTotal + 1;
			}
            //0~4, 5~9, 10~14, 15~19
			boolean hasPreviousPage = cpage - pageGroupSize >= 0;
			boolean hasNextPage = pageGroupStart + pageGroupSize < pageTotal;
			
			sb.append("<div class=\"pg\">\r\n") ; 
			sb.append((cpage > 0) ? makeLink(0, beginLabel) : beginLabel);
			sb.append(hasPreviousPage ? makeLink(pageGroupStart - 1, prevLabel) : prevLabel);
			sb.append("<ul>\r\n") ;  
		
			for (int i = pageGroupStart; i < pageGroupEnd; i++) {
				if (i == cpage) {
					sb.append("<li class=\"on\">") ; 
					sb.append("<strong>");
					sb.append(i + 1);
					sb.append("</strong>");
					sb.append("</li>\r\n") ;  
				} else {
					sb.append("<li>") ; 
					sb.append(makeLink(i, (i + 1) + ""));
					sb.append("</li>\r\n") ;  
				}
			}
			
			/*성택이 바보 ㅇㅅㅇ 뀨 뀨*/
			
			sb.append("</ul>\r\n") ;  
			sb.append(hasNextPage ? makeLink(pageGroupEnd, nextLabel) : nextLabel);
			sb.append((cpage < pageTotal) ? makeLink(pageTotal, endLabel) : endLabel);
			
			sb.append("</div>") ;
			Tag = sb.toString() ;
		} catch ( Exception e ) {
			e.printStackTrace() ;
		}
			
		return Tag ; 
	}

	public static String makeLink(int page, String label) 
	{
		StringBuffer tmp = new StringBuffer();
		tmp.append("<a href=\"javascript:goPage('" + page + "')\">").append(label).append("</a>");
		return tmp.toString();
	}
	
	
}
