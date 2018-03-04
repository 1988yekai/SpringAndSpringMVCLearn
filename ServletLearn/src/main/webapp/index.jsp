<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page import="javax.servlet.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Hello jsp</title>
</head>
<body>
<%
    out.println("Hello World!");
    out.println("Your IP address is " + request.getRemoteAddr());
%>
<br/>
<%--<script type="javascript">--%>
    <%--alert("确认跳转");--%>
<%--</script>--%>
<%
//    out.println("Your IP address is " + request.getRemoteAddr());
    RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/views/a.jsp");
    dispatcher.forward(request, response);
%>
</body>
</html>