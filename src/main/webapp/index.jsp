<%
	if(session.getAttribute("name")==null){
		response.sendRedirect("login.jsp");
	}
%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">                                             
<title>Home</title>                                                     
</head>                                                                 
<body>                                                                  
<header><%@include file= "header.jsp" %></header>                       
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
<footer><%@include file= "footer.jsp" %></footer>                       
</body>                                                                 
</html>                                                                 