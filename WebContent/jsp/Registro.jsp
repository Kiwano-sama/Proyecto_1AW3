<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="es">
<head>
  <title>Registro</title>
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
                <a href="Index.jsp">Identif�cate</a>
            </li>
        </ul>
        <form action="confirmacion.html" method="get">
            <fieldset>
            <legend>Datos Personales</legend>
                <p>Nombre</p>
                <p><input type="text" name="Nombre" Value=""/></p>
                <p>Apellidos</p>
                <p><input type="text" name="Apellido" Value=""/></p>
                <p>D.N.I</p>
                <p><input type="text" name="DNI" Value="" size="10" maxlength="9"/></p>
            </fieldset>
            <fieldset>
            <legend>Datos de conexi�n</legend>
                <p>Correo Electronico o usuario:</p>
                <p> <input class="inputespecial" type="text" name="Email" value=""/></p>
                <p>Contrase�a:</p>
                <p><input class="inputespecial" type="password" name="password" value="" maxlength="15" /></p>
                <p>Repita la Contrase�a:</p>
                <p><input class="inputespecial" type="password" name="password2" value="" maxlength="15" /></p>
                <p><input type="submit" name="Crear Cuenta" value="Crear Cuenta"/> <input type="reset" name="limpiar" value="Borrar Los Datos" /></p>
            </fieldset>
        </form>
    </div>
    </div>
    </body>
</html>