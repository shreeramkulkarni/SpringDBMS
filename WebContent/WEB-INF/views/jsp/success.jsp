<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="false" %>
<% 
HttpSession session = request.getSession();
String name = (String)session.getAttribute("usr");

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Welcome ${username}</h2>
<a href="/SpringDBMS/logout" ><button>Logout</button></a>
</body>
</html>