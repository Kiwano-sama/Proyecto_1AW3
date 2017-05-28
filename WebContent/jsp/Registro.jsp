<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="es">
<head>
<title>Registro</title>
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

<% String error = (String) request.getParameter("error");
	
		if(error != null){
			
			if(error.equals("faltanDatos")){
				%>
				
			<p>¡Error en el Registro. Faltan Datos. Vuelve a meter los datos!</p>
			 <%
			 } else if (error.equals("contrsenaNoCoincide")){
				 %>
					
				<p>¡La Contraseña No Coincide!</p>
				 <%
			 }
		}
		%>
		
    <div id="contenedor">
    <div class="registro-login">
        <ul>
            <li>
                <a href="Index.jsp">Identifícate</a>
            </li>
        </ul>
        <form action="Bienvenida.jsp" method="post">
            <fieldset>
            <legend>Datos Personales</legend>
                <p>Nombre</p>
                <p><input type="text" name="Nombre"/></p>
                <p>Apellidos</p>
                <p><input type="text" name="Apellido"/></p>
                <p>D.N.I</p>
                <p><input type="text" name="DNI" size="10" maxlength="9"/></p>
            </fieldset>
            <fieldset>
            <legend>Datos de conexión</legend>
                <p>Correo Electronico o usuario:</p>
                <p> <input class="inputespecial" type="text" name="Email"/></p>
                <p>Contraseña:</p>
                <p><input class="inputespecial" type="password" name="password" maxlength="15" /></p>
                <p>Repita la Contraseña:</p>
                <p><input class="inputespecial" type="password" name="password2" maxlength="15" /></p>
                <p><input type="submit" name="Crear Cuenta" value="Crear Cuenta"/> <input type="reset" name="limpiar" value="Borrar Los Datos" /></p>
            </fieldset>
        </form>
    </div>
    </div>
    </body>
</html>