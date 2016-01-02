<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<!--  this kind of comment could be seen by the browser-->
<%-- this kind of comment could't be seen by the browser--%>

<%!
	// this the decleration of the global function and var.
	// init zero
	public int count = 100; 

	// this is the java code area, so the comment should be the java style
	public int getCount(){   
		return count;
	}
%>

</head>
<body>
<%out.println(new java.util.Date()); %>
<%out.println(getCount());
	count++;
	%>
	
	<%-- this is the 输出jsp表达式 --%>
<%=count++ %>

<%--jsp script --%>
<table >
<%for(int i=0; i<10; i++){
	%>
	<tr>
		<td>loop value</td>
		<td><%=i%></td>
	</tr>
<%} %>
</table>
</body>
</html>