<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="./styles.css">
    </head>
    <body>
        <jsp:useBean id="curso" scope="request" class="com.emergentes.Curso" />
        <div class="box"  >
            <h1 class="title">Registro en Curso</h1>
            <li>Nombre: <jsp:getProperty name="curso" property="nombre" /> </li>
            <li>Apellido: <jsp:getProperty name="curso" property="apellido" /> </li>
            <li>Curso: <jsp:getProperty name="curso" property="curso" /> </li>
            <button type="submit"> <a style="color:#fff;" href="index.jsp">Volver</a></button>
        </div>
    </body>
</html>
