<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="./styles.css">
    </head>
    <body>
        <jsp:useBean id="libro" scope="request" class="com.emergentes.Libros" />
        <div class="box"  >
            <h1 class="title">Libro Registrado: </h1>
            <li>Titulo: <jsp:getProperty name="libro" property="titulo" /></li>
            <li>Autor:<jsp:getProperty name="libro" property="autor" /> </li>
            <li>Resumen: <jsp:getProperty name="libro" property="resumen" /></li>
            <li>Medio: <jsp:getProperty name="libro" property="medio" /></li>
            <button type="submit"> <a style="color:#fff;" href="index.jsp">Volver</a></button>
        </div>
    </body>
</html>
