<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%@page import="Modelo.*" %>
	<%
		ModeloUsuario userModel = new ModeloUsuario();
		
			String email = (String) request.getParameter("email");
			String pass = (String) request.getParameter("pass");

			Usuario user = userModel.selectUserLogin(email, pass);

		if (user != null) {
			session.setAttribute("user", user);
			response.sendRedirect("Gestion_Proyecto.jsp");
			/* if(user.getAdmin().equals("1")){
				session.setAttribute("user", user);
				response.sendRedirect("Acciones.jsp");
			}else{
				session.setAttribute("user", user);
				response.sendRedirect("Gestion_Proyecto.jsp");
			} */
		} else {
			response.sendRedirect("Index.jsp?error=datosmal");
		}
	%>

</body>
</html>