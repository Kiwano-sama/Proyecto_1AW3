<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="es">
<head>
  <title>Index</title>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="../css/estilos.css" type="text/css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
   <body>
    <div id="contenedor">
    <div class="registro-login">
        <ul>
            <li>
                <a href="Registro.jsp">Registrate</a>
            </li>
        </ul>
        <form action="" method="get">
            <fieldset>
                <p>Correo Electronico o usuario:</p>
                <p> <input class="inputespecial" type="text" placeholder="Email o Usuario" name="email" value=""/></p>
                <p>Contraseña:</p>
                <p><input class="inputespecial" type="password" name="pass"  placeholder="contraseña" value="" maxlength="15" /></p>
                <p><input class="inputespecial inicio-sesion" type="submit" name="Iniciar Sesion" value="Iniciar Sesion" /></p>
                <p>Mantenme Conectado <input name="conectado" type="Checkbox" Value="conectado"/></p>
                <p><a href="#">¿Has olvidado tu contraseña?</a></p>
            </fieldset>
        </form>
    </div>
    </div>
    <%-- <%@page import="Modelo.*" %>
    <%
    	String email = request.getParameter("email");
   		String password = request.getParameter("pass");
   		Usuario usuario = new Usuario();
   		if((usuario.getEmail().equals(email)) && (usuario.getPassword().equals(password))){
   			
   		}else {
        out.println("Invalid password <a href='index.jsp'>try again</a>");
    }
    %> --%>
    </body>
</html>