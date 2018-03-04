<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
</head>
<body>


<form:form action="/SpringMVC/crud/emp" method="POST" modelAttribute="employee">
    <!-- path 属性对应html表单标签的name属性 -->
    <c:if test="${employee.id == null }">
        <!-- path 属性对应 html 表单标签的 name 属性值 -->
        Name: <form:input path="Name" /><br/>
        <form:errors path="Name"></form:errors>
    </c:if>
    <c:if test="${employee.id != null }">
        <form:hidden path="id" />
        <input type="hidden" name="_method" value="PUT" />
    </c:if>

    Email:<form:input path="email"></form:input><br>
    <%
        Map<String, String> genders = new HashMap<String, String>();
        genders.put("1", "male");
        genders.put("0", "female");
        request.setAttribute("genders", genders);
    %>
    Gender:<form:radiobuttons path="gender" items="${genders}"/><br>
    Department:<form:select path="department.id" items="${departments }" itemLabel="departmentName" itemValue="id"></form:select><br>
    <input type="submit" value="Submit"/>
</form:form>

</body>
</html>