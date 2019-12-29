<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="com.dao.EmpDao,com.bean.Employee,java.util.*"%>  
<jsp:useBean id="u" class="com.bean.Employee"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 


String id=request.getParameter("empid1");

int id1=Integer.parseInt(id);
List<Employee> list=EmpDao.getAllDetails(id1);
request.setAttribute("list",list);

for(Employee e:list)
{
e.getFname();	
}

%>
 



</body>
</html>