<%@page import="Student.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="javax.persistence.Query"%>
<%@page import="javax.persistence.EntityManager"%>
<%@page import="javax.persistence.Persistence"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
EntityManagerFactory emf=Persistence.createEntityManagerFactory("siddharth");
EntityManager em=emf.createEntityManager();
Query q=em.createQuery("select s from Student s");
List <Student> s=q.getResultList();
%>
<table align="center" cellpadding="20px" border="1">
<th>id</th>
<th>Name</th>
<th>Marks</th>
<th>Stream</th>
<%for(Student s1:s){ %>
<tr align="center">
<td><%=s1.getId()%></td>
<td><%=s1.getName() %></td>
<td><%=s1.getFees() %></td>
<td><%=s1.getStream() %></td>
</tr>
<%} %>
</table>
</body>
</html>