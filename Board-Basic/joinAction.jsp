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
<jsp:setProperty name="user" property="userName" />
<jsp:setProperty name="user" property="userGender" />
<jsp:setProperty name="user" property="userEmail" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 게시판 웹 사이트</title>
</head>
<body>
	<%
	// 로그인 시도를 했을 때, 입력을 안한 부분이 있는경우
		if (user.getUserID() == null || user.getUserPassword() == null || user.getUserName() == null
			|| user.getUserGender() == null || user.getUserEmail() == null) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('입력이 안된 사항이 있습니다.')");
			// 로그인을 실패했으므로 전 화면으로 back
			script.println("history.back()");
			script.println("</script>");
			} else{
				// DB에 접근할수 있는 UserDAO 객체 선언, 회원가입 조건을 만족하면 DB에 회원정보가 등록된다.
				UserDAO userDAO = new UserDAO();
				//10행 jsp:useBean에서 선언한 user 인스턴스가 join 함수를 수행하도록 선언
				int result = userDAO.join(user);
			// 이미 아이디가 존재하는 경우, DB오류 일경우 -1 반환(UserDAO 참고)
			if (result == -1) {
				session.setAttribute("userID", user.getUserID());
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('이미 존재하는 아이디입니다.')");
				// 로그인을 실패했으므로 전 화면으로 back
				script.println("history.back()");
				script.println("</script>");
			}
			// 회원가입 성공하는 경우
			else {
				session.setAttribute("userID", user.getUserID());
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("location.href = 'main.jsp'");
				script.println("</script>");
			}
		}
	%>
</body>
</html>