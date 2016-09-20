<%@page import="java.util.ArrayList"%>
<%@page import="com.data.DataUser"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.DaoUser"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="UpdateData">
		<input type="hidden" name="id" value="<% out.print(request.getParameter("id")); %>">
		<input type="text" name="username" value="<% out.print(request.getParameter("user")); %>"><br>
		<input type="text" name="nama" value="<% out.print(request.getParameter("nama")); %>"><br>
		<input type="text" name="alamat" value="<% out.print(request.getParameter("almt")); %>"><br>
		<input type="submit" value="ubah">
	</form>
</body>
</html>