<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bajas</title>
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

<%@page import="Modelo.*"%>
	<%@page import="java.util.ArrayList"%>
	
	<%
		ModeloUsuario modeloUsuario = new ModeloUsuario();

		ArrayList<Usuario> nombreUsuario = new ArrayList<Usuario>();

		nombreUsuario = modeloUsuario.seleccionarNombre();
	
if ((request.getParameter("dni"))!=null){
	
	String dniUsuario = request.getParameter("dni");
	
	modeloUsuario.borrarPorDni(dniUsuario);

%>
	<p>Usuario <%=dniUsuario%> borrado</p>

		<%
			}
			
		%>

</body>
</html>