<%@page import="java.io.PrintWriter"%>
<%@page import="Teacher.Teacher"%>
<%@page import="javax.persistence.EntityManager"%>
<%@page import="javax.persistence.Persistence"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String id=request.getParameter("Id");
int id1=Integer.parseInt(id);
EntityManagerFactory emf=Persistence.createEntityManagerFactory("siddharth");
EntityManager em=emf.createEntityManager();
Teacher t=em.find(Teacher.class, id1);
if(t==null)
{
	PrintWriter pw=response.getWriter();
	pw.write("No Teacher Found");
	RequestDispatcher rd=request.getRequestDispatcher("UpdateT.html");
	rd.include(request, response);
}	
%>
<form action="updateT" method="post">
		Id: <input type="number" value="<%=t.getId()%>" name="id"><br>
		Name: <input type="text" value="<%=t.getName()%>" name="name"><br>
		Salary: <input type="number" value="<%=t.getSal()%>" name="salary"><br>
		Subject: <input type="text" value="<%=t.getSubject()%>"name="subject"><br>
		<input type="submit" value="UPDATE">
	</form>

</body>
</html>