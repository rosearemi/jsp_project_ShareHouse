<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import="java.sql.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../include/header.jsp" %>
	






<div class="owl-carousel-wrapper">

      

      <div class="box-92819 shadow-lg">
        

          <div>
            <h2 class=" mb-3 text-black">About The share house</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatibus quam, ratione earum.</p>
          </div>
        
      </div>

        <div class="ftco-cover-1" style="background-image: url('images/hero_1.jpg')"></div>
    </div>
    
    
<div class="container-fluid">
<div class="row">
   			<div class="col-md-2">
				<ul style="font-size: 20px">
					<li class="active"><a href="about.do">Review</a><br></li>
					<li><a href="reservation.do">Reservation</a></li>
				</ul>
			</div>

	<div class="col-md-8 col-sm-8" >
				<h1>Reservation</h1>
  <HR>
  <form>
   <h3 id="re_id" name="re_id" value="${session_id }">회원: ${session_id }</h3>&nbsp;&nbsp;
   <input type=text name=memoYear size=4>년
   <input type=text name=memoMonth size=2>월
   <input type=text name=memoDay size=2>일
   내용 : <input type=text name=memoContents>
   <button type=submit id=button >예약</button><br><br>
 </form>
	<%
   //데이터베이스를 연결하는 관련 변수를 선언한다
  Connection conn= null;
  PreparedStatement pstmt = null;
   //데이터베이스를 연결하는 관련 정보를 문자열로 선언한다.
  String jdbc_driver= "oracle.jdbc.driver.OracleDriver"; //JDBC 드라이버의 클래스 경로
  String jdbc_url= "jdbc:oracle:thin:@127.0.0.1:1521:xe";  //접속하려는 데이터베이스의 정보
   //JDBC 드라이버 클래스를 로드한다.
  Class.forName("oracle.jdbc.driver.OracleDriver");
   //데이터베이스 연결 정보를 이용해서 Connection 인스턴스를 확보한다.
  conn= DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe", "jsp", "1234");
  if (conn== null) {
   out.println("No connection is made!");
  }
  %>
				  <%
  java.util.Calendar cal=java.util.Calendar.getInstance(); //Calendar객체 cal생성
  int currentYear=cal.get(java.util.Calendar.YEAR); //현재 날짜 기억
  int currentMonth=cal.get(java.util.Calendar.MONTH);
  int currentDate=cal.get(java.util.Calendar.DATE);
  String Year=request.getParameter("year"); //나타내고자 하는 날짜
  String Month=request.getParameter("month");
  int year, month;
  if(Year == null && Month == null){ //처음 호출했을 때
  year=currentYear;
  month=currentMonth;
  }
  else { //나타내고자 하는 날짜를 숫자로 변환
   year=Integer.parseInt(Year);
   month=Integer.parseInt(Month);
   if(month<0) { month=11; year=year-1; } //1월부터 12월까지 범위 지정.
   if(month>11) { month=0; year=year+1; }
  }
  %>
  
  <script type="text/javascript">
$("#button").on('click',function(){
	  <%	  
	  String id=(String) session.getAttribute("session_id");
   Statement stmt=null;
    stmt = conn.createStatement(); 
    String sql1= "INSERT INTO CALENDARMEMO (CALENDARMEMO_ID, CALENDARMEMO_YEAR, CALENDARMEMO_MONTH, CALENDARMEMO_DAY, CALENDARMEMO_CONTENTS) VALUES ('";
   sql1+=id;
   sql1+= "', "; 
   sql1+= request.getParameter("memoYear");
   sql1+= ", ";
   sql1+= request.getParameter("memoMonth");
   sql1+= ", ";
   sql1+= request.getParameter("memoDay");
   sql1+= ", \'";
   sql1+= request.getParameter("memoContents");
   sql1+= " \')";
   stmt.executeUpdate(sql1);
   
   %>
});
  </script>
  
  <center>
  <table border=0>
   <tr>
    <td align=left width=200> <!-- 년 도-->
    <a href="reservation.do?year=<%out.print(year-1);%>&month=<%out.print(month);%>">◀</a>
    <% out.print(year); %>년
    <a href="reservation.do?year=<%out.print(year+1);%>&month=<%out.print(month);%>">▶</a>
    </td>
    <td align=center width=300> <!-- 월 -->
    <a href="reservation.do?year=<%out.print(year);%>&month=<%out.print(month-1);%>">◀</a>
    <% out.print(month+1); %>월
    <a href="reservation.do?year=<%out.print(year);%>&month=<%out.print(month+1);%>">▶</a>
    </td>
    <td align=right width=200><% out.print(currentYear + "-" + (currentMonth+1) + "-" + currentDate); %></td>
   </tr>
  </table>
  <table border=1 cellspacing=0> <!-- 달력 부분 -->
   <tr>
    <td width=200>일</td> <!-- 일=1 -->
    <td width=200>월</td> <!-- 월=2 -->
    <td width=200>화</td> <!-- 화=3 -->
    <td width=200>수</td> <!-- 수=4 -->
    <td width=200>목</td> <!-- 목=5 -->
    <td width=200>금</td> <!-- 금=6 -->
    <td width=200>토</td> <!-- 토=7 -->
   </tr>
   <tr height=40>
   <%
  
   cal.set(year, month, 1); //현재 날짜를 현재 월의 1일로 설정
   int startDay=cal.get(java.util.Calendar.DAY_OF_WEEK); //현재날짜(1일)의 요일
   int end=cal.getActualMaximum(java.util.Calendar.DAY_OF_MONTH); //이 달의 끝나는 날
   int br=0; //7일마다 줄 바꾸기
   for(int i=0; i<(startDay-1); i++) { //빈칸출력
    out.println("<td>&nbsp;</td>");
    br++;
    if((br%7)==0) {
     out.println("<br>");
    }
   }
   for(int i=1; i<=end; i++) { //날짜출력
    out.println("<td>" + i + "<br>");
      //메모(일정) 추가 부분
      int memoyear, memomonth, memoday;
      String memoid;
      try{
        // select 문장을 문자열 형태로 구성한다.
       String sql= "SELECT calendarmemo_year, calendarmemo_month, calendarmemo_day, calendarmemo_contents, calendarmemo_id FROM calendarmemo";

       pstmt= conn.prepareStatement(sql);
        // select 를 수행하면 데이터 정보가 ResultSet 클래스의 인스턴스로 리턴
       ResultSet rs= pstmt.executeQuery();
       while (rs.next()) { // 마지막 데이터까지 반복함.
        //날짜가 같으면 데이터 출력
        memoyear=rs.getInt("calendarmemo_year");
        memomonth=rs.getInt("calendarmemo_month");
        memoday=rs.getInt("calendarmemo_day");
        memoid = rs.getString("calendarmemo_id");
        if(year==memoyear && month+1==memomonth && i==memoday) {
         out.println(rs.getString("calendarmemo_contents")+"<br>"); 
         out.println("예약회원:");
         out.println(rs.getString("calendarmemo_id"));
        }
       }
       rs.close();
      }
      catch(Exception e) {
       System.out.println(e);
      };
    out.println("</td>");
    br++;
    if((br%7)==0 && i!=end) {
     out.println("</tr><tr height=30>");
    }
   }
   while((br++)%7!=0) //말일 이후 빈칸출력
    out.println("<td>&nbsp;</td>");
   %>
   </tr>
  </table>
  </center>       
 <%
        //사용한 자원을 반납한다.
       pstmt.close();
       conn.close();
   %>				
				
				
				
				
				
				
	</div>
</div>
   
  <div class="site-section section-4">
      <div class="container">

        <div class="row justify-content-center text-center">
          <div class="col-md-10">
            <div class="slide-one-item owl-carousel">
              <blockquote class="testimonial-1">
                <span class="quote quote-icon-wrap"><span class="icon-format_quote"></span></span>
                <p>동해물과 백두산이</p>
                <cite><span class="text-black">고희선</span> &mdash; <span class="text-muted">no1</span></cite>
              </blockquote>

              <blockquote class="testimonial-1">
                <span class="quote quote-icon-wrap"><span class="icon-format_quote"></span></span>
                <p>마르고 닳도록</p>
                <cite><span class="text-black">정수미</span> &mdash; <span class="text-muted">no2</span></cite>
              </blockquote>

              <blockquote class="testimonial-1">
                <span class="quote quote-icon-wrap"><span class="icon-format_quote"></span></span>
                <p> 하느님이 보우하사</p>
                <cite><span class="text-black">이동우</span> &mdash; <span class="text-muted">no3</span></cite>
              </blockquote>
            </div>
          </div>
        </div>
      </div>
    </div>

<script type="text/javascript">
$("#btnWriteForm").on('click',function(){
	location.href="writer.do";
});

</script>
    
    
<%@ include file="../include/footer.jsp" %>