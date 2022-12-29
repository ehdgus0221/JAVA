<!-- 가장 많이 쓰이는 인코딩 UTF-8로 바꾸기, 한글,영어 둘다 지원 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO" %> 
<!-- 자바 스크립트 문장을 사용하기 위해 사용, 선언할 때 대소문자 잘못쓰면 선언오류 -->
<%@ page import="java.io.PrintWriter" %> 
<!-- 건너오는 데이터를 UTF-8 로 받아온다 -->
<% request.setCharacterEncoding("UTF-8"); %>
<!-- 자바 beans를 사용, scope=page 현재 페이지에서만 자바 beans를 사용한다. -->
<jsp:useBean id="user" class="user.User" scope="page" />
<jsp:setProperty name="user" property="userID" />
<jsp:setProperty name="user" property="userPassword" />
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
	if(userID != null) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('이미 로그인이 되어있습니다.')");
		script.println("location.herf = 'main.jsp'");
		script.println("</script>");
	}
		UserDAO userDAO = new UserDAO();
		int result = userDAO.login(user.getUserID(), user.getUserPassword());
	if (result == 1) {
		// 세션을 설정해줘야 로그인 상태가 유지된다.
		session.setAttribute("userID", user.getUserID());
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("location.href = 'main.jsp'");
		script.println("</script>");
	}
	else if (result == 0) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('비밀번호가 틀립니다.')");
		// 로그인을 실패했으므로 전 화면으로 back
		script.println("history.back()");
		script.println("</script>");
	}
	else if (result == -1) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('존재하지 않는 아이디입니다.')");
		// 로그인을 실패했으므로 전 화면으로 back
		script.println("history.back()");
		script.println("</script>");
	}
	else if (result == -2) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('데이터베이스 오류가 발생했습니다.')");
		// 로그인을 실패했으므로 전 화면으로 back
		script.println("history.back()");
		script.println("</script>");
	}
	
	%>
</body>
</html>