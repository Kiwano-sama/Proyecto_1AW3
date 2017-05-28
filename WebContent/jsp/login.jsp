<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%
	String nombreCSS = (String)request.getParameter("principal");
    if(nombreCSS==null){
    	session.putValue("css", "estilos");
    }else{
    	session.putValue("css", nombreCSS);
    }
%>


<link rel="stylesheet" href="../css/<%=session.getValue("css")%>.css" type="text/css" id="principal"/>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<p><a href="Index.jsp?principal=estilos">CSS Principal</a> - <a href="Index.jsp?principal=alternativo">CSS Alternativo</a></p>


	<%@page import="Modelo.*" %>
	<%
		ModeloUsuario userModel = new ModeloUsuario();
		
			String email = (String) request.getParameter("email");
			String pass = (String) request.getParameter("pass");

			Usuario user = userModel.selectUserLogin(email, pass);

		if (user != null) {
			session.setAttribute("user", user);
			
			
			
			if(user.isAdmin()){
				
				response.sendRedirect("Acciones.jsp");
			}else{
				
				response.sendRedirect("Gestion_Proyecto.jsp");
			}
		} else {
			response.sendRedirect("Index.jsp?error=datosmal");
		}
	%>

</body>
</html>