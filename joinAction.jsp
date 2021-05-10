<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="user.UserDAO" %>
<%@ page import ="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id = "user" class="user.User" scope="page" />
<jsp:setProperty name="user" property="userID"/>
<jsp:setProperty name="user" property="userPassword"/>
<jsp:setProperty name="user" property="userName"/>
<jsp:setProperty name="user" property="userGender"/>
<jsp:setProperty name="user" property="userEmail"/>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>게시판</title>
	</head>
	<body>
		<%
			String userID=null;
			if(session.getAttribute("userID") != null){
				userID = (String) session.getAttribute("userID");
			};
			if (userID != null){
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('로그인이 이미 되어있습니다.')");
				script.println("location.href='main.jsp'");
				script.println("</script>");
			}
			if(user.getUserID() == null){
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('아이디를 입력해주세요.')");
				script.println("history.back()");
				script.println("</script>");
			} else if (user.getUserPassword() == null){
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('비밀번호를 입력해주세요.')");
				script.println("history.back()");
				script.println("</script>");
			} else if(user.getUserName() == null){
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('이름을 입력해주세요.')");
				script.println("history.back()");
				script.println("</script>");
			} else if(user.getUserGender() == null){
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('성별을 선택해주세요.')");
				script.println("history.back()");
				script.println("</script>");
			} else if(user.getUserEmail() == null){
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('이메일을 입력해주세요.')");
				script.println("history.back()");
				script.println("</script>");
			} else{
				UserDAO userDAO = new UserDAO();
				int result = userDAO.join(user);
				if(result == -1){
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('아이디가 이미 존재합니다.')");
					script.println("history.back()");
					script.println("</script>");
				}
				else {
					PrintWriter script = response.getWriter();
					session.setAttribute("userID", user.getUserID());
					script.println("<script>");
					script.println("location.href='main.jsp'");
					script.println("</script>");
				}
			}
			
		%>
	</body>
</html>