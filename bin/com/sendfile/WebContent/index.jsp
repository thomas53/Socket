<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
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
	<form action="SimpanData" method="post">
		Username : <br>
		<input type="text" name="username"  /><br>
		Nama : <br>
		<input type="text" name="nama"  /><br>
		Alamat : <br>
		<input type="text" name="alamat"  /><br>
		<input type="submit" name="simpan" value="simpan">
	</form>
	<%
		DaoUser dao = new  DaoUser();
		List<DataUser> x = dao.getDataUser(); 
	%>
	<table>
		<thead>
			<tr>
				<th>Username</th>
				<th>Nama</th>
				<th>Alamat</th>
				<th>Aksi</th>
			</tr>
		</thead>
		<tbody>
			<% for(DataUser u : x){ %>
				<tr>
					<td><% out.print(u.getUsername()); %></td>
					<td><% out.print(u.getNama()); %></td>
					<td><% out.print(u.getAlamat()); %></td>
					<td>
						<% out.print("<a href='HapusData?id="+u.getId()+"'>hapus</a>"); %>
						<% out.print("<a href='EditData.jsp?id="+u.getId()+"&user="+u.getUsername()+"&nama="+u.getNama()+"&almt="+u.getAlamat()+"'>edit</a>"); %>						
					</td>
				</tr>		 
			<% } %>
			
		
		</tbody>
	</table>
	
</body>
</html>