<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Confirmacion proyecto</title>
</head>
<body>

<%@page import="Modelo.*"%>
	<%
	String nombre = request.getParameter("nombreProyecto");
	String descripcion = request.getParameter("descripcion");
	int presupuesto = request.getParameter("presupuesto");
	Date fechaEntrada = request.getParameter("fechaEntrada");
	Date fechaFin = request.getParameter("fechaFin");
	String categoria = request.getParameter("categoria");
	
	ModeloProyecto modeloProyecto = new ModeloProyecto();
	Proyecto proyecto = new Proyecto();
	Usuario usuario = new Usuario();
	
	if((nombre != null) && (descripcion != null) && (String.valueOf(presupuesto) != null) && 
			(fechaEntrada != null) && (fechaFin != null) && (categoria != null) && (nombre != "") && (descripcion != "") && (String.valueOf(presupuesto) != "") && 
			(fechaEntrada != "") && (fechaFin != "") && (categoria != "")){
		String dni = usuario.getDni();
		
		
		proyecto.setNombre(nombre);
		proyecto.setDescripcion(descripcion);
		proyecto.setPresupuesto(presupuesto);
		proyecto.setFechaInicio(fechaEntrada);
		proyecto.setFechaFin(fechaFin);
		proyecto.setCategoria(categoria);
		
		modeloProyecto.insertar(proyecto);
		%>
		<p> Proyecto Insertado correctamente</p>
		<%
	}else {
		response.sendRedirect("PresentarProyecto.jsp?error=faltanDatos");
	}
	
	%>

</body>
</html>