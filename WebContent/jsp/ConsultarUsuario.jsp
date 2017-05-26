<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Consultar Usuario</title>
</head>
<body>

	<%@page import="Modelo.*"%>
	<%@page import="java.util.ArrayList"%>
	
	<%
		ModeloUsuario modeloUsuario = new ModeloUsuario();

		ArrayList<Usuario> nombreUsuario = new ArrayList<Usuario>();

		nombreUsuario = modeloUsuario.seleccionarNombre();
	%>
	
	<form action="ConsultarUsuario.jsp" method="get">
		<select name="nombreUsuario">
			<option value="" selected="selected">- selecciona -</option>

			<%
				for (Usuario user : nombreUsuario) {
			%>

			<option value="<%=user.getNombre()%>"><%=user.getNombre()%></option>


			<%
				}
			%>
		</select> 
		<button type="submit" name="Buscar" value="Buscar" >Buscar</button>
	</form>

	<%
if ((request.getParameter("nombreUsuario"))!=null){
	


%>

	<table>
		<tr>
			<th>DNI</th>
			<th>NOMBRE</th>
			<th>EMAIL</th>
			<th>PASSWORD</th>
			<th>ADMINISTRADOR</th>
		</tr>

		<%
			ArrayList<Usuario> usuariosDetallados = new ArrayList<Usuario>();

		usuariosDetallados = modeloUsuario.consultarUsuario(request.getParameter("nombreUsuario"));

			for (Usuario user : usuariosDetallados) {
		%>

		<tr>
			<td><%=user.getDni()%></td>
			<td><%=user.getNombre()%></td>
			<td><%=user.getEmail()%></td>
			<td><%=user.getPassword()%></td>
			<td><%=user.isAdmin()%></td>
		</tr>

		<%
			}
			}
		%>

	</table>
</body>
</html>