<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--改表单用于提交数据到forwardjsp页面，用来测试jsp forward --%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<form id = "login" method = "post" action="forward_result.jsp">
	<input type="text" name = "username" />
	<input type="submit" value = "login" />
</form>
</body>
</html>