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
<%@page import="java.util.Date"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
	<%
	DateFormat format = new SimpleDateFormat("mm/dd/yyyy");
	String nombre = request.getParameter("nombreProyecto");
	String descripcion = request.getParameter("descripcion");
	int presupuesto = Integer.parseInt(request.getParameter("presupuesto"));
	Date fechaFin = format.parse(request.getParameter("fechaFin"));
	String categoria = request.getParameter("categoria");
	
	ModeloProyecto modeloProyecto = new ModeloProyecto();
	ModeloGestion modeloGestion = new ModeloGestion();
	Proyecto proyecto = new Proyecto();
	Usuario usuario = new Usuario();
	Gestion gestion = new Gestion();
	
	if (session.getAttribute("user") != null){
	usuario = (Usuario)session.getAttribute("user");
	
	
	if((nombre != null) && (descripcion != null) && (String.valueOf(presupuesto) != null) && 
			(fechaFin != null) && (categoria != null) && (nombre != "") && (descripcion != "") && (String.valueOf(presupuesto) != "") && 
			(String.valueOf(fechaFin) != "") && (categoria != "")){
		
		String dni = usuario.getDni();
		
		proyecto.setNombre(nombre);
		proyecto.setDescripcion(descripcion);
		proyecto.setPresupuesto(presupuesto);
		proyecto.setFechaFin(fechaFin);
		proyecto.setCategoria(categoria);
		
		modeloProyecto.insertar(proyecto);
		
		int proyectoID = modeloProyecto.getMaxId();
		
		gestion.setDni(dni);
		gestion.setProyectoID(proyectoID);
		
		modeloGestion.insertar(gestion);
		%>
		<p> Proyecto Insertado correctamente</p>
		<%
	}else {
		response.sendRedirect("PresentarProyecto.jsp?error=faltanDatos");
	}
	} else {
	%> 
	<p> NO ESTAS LOGUEADO</p>
	<%
	}
	
	%>

</body>
</html>