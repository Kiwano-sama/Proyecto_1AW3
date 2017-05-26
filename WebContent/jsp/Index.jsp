<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="es">
<head>
<title>Index</title>
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

<% 
	String error = (String) request.getParameter("error");
	
		if(error != null){
			
			if(error.equals("datosmal")){
				%>
				
			<p>Error en el login. Vuelve a meter los datos</p>
			 <%
			 }
		}
	%>
	
	<div id="contenedor">
		<div class="registro-login">
			<ul>
				<li><a href="Registro.jsp">Registrate</a></li>
			</ul>
			<form action="login.jsp" method="post">
				<fieldset>
					<p>Correo Electronico o usuario:</p>
					<p>
						<input class="inputespecial" type="text"
							placeholder="Email o Usuario" name="email" value="" />
					</p>
					<p>Contraseña:</p>
					<p>
						<input class="inputespecial" type="password" name="pass"
							placeholder="contraseña" value="" maxlength="15" />
					</p>
					<p>
						<input class="inputespecial inicio-sesion" type="submit"
							name="Iniciar Sesion" value="Iniciar Sesion" />
					</p>
					<p>
						Mantenme Conectado <input name="conectado" type="Checkbox"
							Value="conectado" />
					</p>
					<p>
						<a href="#">¿Has olvidado tu contraseña?</a>
					</p>
				</fieldset>
			</form>
		</div>
	</div>
</body>
</html>