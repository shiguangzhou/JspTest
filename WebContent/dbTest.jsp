<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>测试数据库连接 </title>
</head>
<body>
<%
String driver = application.getInitParameter("driver");
String url = application.getInitParameter("url");
String user = application.getInitParameter("user");
String pass = application.getInitParameter("pass");

Class.forName(driver);
Connection conn = DriverManager.getConnection(url, user, pass);
Statement stmt = conn.createStatement();
ResultSet rs = stmt.executeQuery("select * from tutorials_tbl");

%>
<table bgcolor="#9999dd" border = "1" width="480">
	<%
		while(rs.next()){
			%>
				<tr>
					<td><%=rs.getString(1)%></td>
				</tr>
			<%
		}
	%>
</table>
</body>
</html>