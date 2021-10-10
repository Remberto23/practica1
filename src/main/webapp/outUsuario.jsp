<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="./styles.css">
    </head>
    <body>
        <jsp:useBean id="usuario" scope="request" class="com.emergentes.Usuario" />
        <div class="box"  >
            <h1 class="title">Usuario Registrado: </h1>
            <li>Nombre: <jsp:getProperty name="usuario" property="nombre" /></li>
            <li>Apellido: <jsp:getProperty name="usuario" property="apellido" /></li>
            <li>Correo: <jsp:getProperty name="usuario" property="correo" /></li>
            <li>Contraseña: <jsp:getProperty name="usuario" property="pass" /></li>
            <button type="submit"> <a style="color:#fff;" href="index.jsp">Volver</a></button>
        </div>
    </body>
</html>
