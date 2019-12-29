<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.dao.EmpDao,com.bean.Employee"%>  
<jsp:useBean id="u" class="com.bean.Employee"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String id=request.getParameter("empid");

int id1=Integer.parseInt(id);
Employee e=EmpDao.getDetailByID(id1);

%>
<h1>Below Are the details</h1>
<table>
<tr>
<td>ID</td><td>Fname</td><td>Lname</td><td>DOB</td><td>Email</td>
</tr>
<tr><td><%=e.getId() %></td><td><%=e.getFname() %></td><td><%=e.getLname() %></td><td><%=e.getDob() %></td><td><%=e.getEmail() %>></td></tr>
</table>

</body>
</html>