<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Consultas</title>
</head>
<body>
	<%@page import="Modelo.*"%>
	<%@page import="java.util.ArrayList"%>

	<%
		ModeloProyecto modeloProyecto = new ModeloProyecto();

		ArrayList<Proyecto> nombreProyectos = new ArrayList<Proyecto>();

		nombreProyectos = modeloProyecto.seleccionarNombre();
	%>

	<form action="ConsultarProyecto.jsp" method="get">
		<select name="nombreProyecto">
			<option value="" selected="selected">- selecciona -</option>

			<%
				for (Proyecto pro : nombreProyectos) {
			%>

			<option value="<%=pro.getNombre()%>"><%=pro.getNombre()%></option>


			<%
				}
			%>
		</select> 
		<button type="submit" name="Buscar" value="Buscar" >Buscar</button>
	</form>

<%
if ((request.getParameter("nombreProyecto"))!=null){
	


%>

	<table>
		<tr>
			<th>NOMBRE</th>
			<th>DESCRIPCION</th>
			<th>PRESUPUESTO</th>
			<th>FECHA INICIO</th>
			<th>FECHA FIN</th>
			<th>CATEGORIA</th>
		</tr>

		<%
			ArrayList<Proyecto> proyectosDetallados = new ArrayList<Proyecto>();

			proyectosDetallados = modeloProyecto.consultarProyecto(request.getParameter("nombreProyecto"));

			for (Proyecto pro : proyectosDetallados) {
		%>

		<tr>
			<td><%=pro.getNombre()%></td>
			<td><%=pro.getDescripcion()%></td>
			<td><%=pro.getPresupuesto()%></td>
			<td><%=pro.getFechaInicio()%></td>
			<td><%=pro.getFechaFin()%></td>
			<td><%=pro.getCategoria()%></td>
		</tr>

		<%
			}
			}
		%>

	</table>

</body>
</html>