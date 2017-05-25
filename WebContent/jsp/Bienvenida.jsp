<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
		String nombre = request.getParameter("Nombre");
		String apellido = request.getParameter("Apellido");
		String dni = request.getParameter("DNI");
		String email = request.getParameter("Email");
		String pass = request.getParameter("password");
		String pass2 = request.getParameter("password2");
		String password;
		
		if((nombre != null) && (apellido != null) && (dni != null) && 
				(email != null) && (pass != null) && (pass2 != null)){
			if (pass.equals(pass2)){
				password = pass;
			}
		}
	%>

</body>
</html>