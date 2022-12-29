<!-- 가장 많이 쓰이는 인코딩 UTF-8로 바꾸기, 한글,영어 둘다 지원 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="bbs.Bbs" %> 
<%@ page import="bbs.BbsDAO" %> 

<!-- 자바 스크립트 문장을 사용하기 위해 사용, 선언할 때 대소문자 잘못쓰면 선언오류 -->
<%@ page import="java.io.PrintWriter" %> 
<!-- 건너오는 데이터를 UTF-8 로 받아온다 -->
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 게시판 웹 사이트</title>
</head>
<body>
	<%
	String userID = null;
	
	if(session.getAttribute("userID") != null){
		userID = (String) session.getAttribute("userID");
	}
	// 이미 로그인한 사람은 회원가입 페이지 접속 차단
	if(userID == null) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('로그인을 하세요.')");
		script.println("location.href = 'login.jsp'");
		script.println("</script>");
	} 
	int bbsID=0;
	if (request.getParameter("bbsID") != null) {
		bbsID = Integer.parseInt(request.getParameter("bbsID"));
	}
	if (bbsID == 0) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('유효하지 않은 글입니다..')");
		script.println("location.href = 'bbs.jsp'");
		script.println("</script>");

	}
	Bbs bbs = new BbsDAO().getBbs(bbsID);
	if (!userID.equals(bbs.getUserID())){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('권한이 없습니다.')");
		script.println("location.href = 'bbs.jsp'");
		script.println("</script>");
	} else {

					// DB에 접근할수 있는 UserDAO 객체 선언, 회원가입 조건을 만족하면 DB에 회원정보가 등록된다.
					BbsDAO BbsDAO = new BbsDAO();
					//10행 jsp:useBean에서 선언한 user 인스턴스가 join 함수를 수행하도록 선언
					int result = BbsDAO.delete(bbsID);
				// 이미 아이디가 존재하는 경우, DB오류 일경우 -1 반환(UserDAO 참고)
				if (result == -1) {
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('글 삭제에 실패했습니다.')");
					// 로그인을 실패했으므로 전 화면으로 back
					script.println("history.back()");
					script.println("</script>");
				}
				// 회원가입 성공하는 경우
				else {
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("location.href = 'bbs.jsp'");
					script.println("</script>");
				}			
		}
	%>
</body>
</html>