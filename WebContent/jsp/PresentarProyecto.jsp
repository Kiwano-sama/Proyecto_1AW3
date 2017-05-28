<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="es">
<head>
<title>Insertear Proyecto</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">

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


	<h3>Proyecto Nuevo</h3>
		<form action="login.jsp" method="post">
		<fieldset>
			<p>NOMBRE DE PROYECTO:</p>
			<p><input type="text" name="nombreProyecto" value="" maxlength="25" size="40" /></p>
			<p>DESCRIPCION:</p>
			<P><textarea name="descripcion" rows="5" cols="30"></textarea></p>
			<p>META:</p>
			<p><input type="text" name="presupuesto" value="" maxlength="6" /></p>
			<p>FECHA DE ENTRADA (dd/mm/aaaa):</p>
			<p><input type="date" name="fechaEntrada" disabled> </p>
			<p>FECHA DE FIN (dd/mm/aaaa):</p>
			<p><input type="date" name="fechaFin"> </p>
			<p>CATEGORIA:</p>
			<p>
			<select id="categoria" name="categoria">
			  <option value="" selected="selected">- selecciona -</option>
			  <option value="juegos">Juegos</option>
			  <option value="cineVideo">Cine y Video</option>
			  <option value="musica">Musica</option>
			  <option value="comics">Comics</option>
			  <option value="otro">Otro</option>
			</select>
			</p>
			<p>
				<input type="submit" name="insertar" value="Insertar">
				<input type="Reset" name="restablecer" value="restablecer">
			</p>
		</fieldset>
		</form>

</body>
</html>