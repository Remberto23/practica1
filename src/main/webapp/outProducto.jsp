<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="./styles.css">
    </head>
    <body>
        <jsp:useBean id="producto" scope="request" class="com.emergentes.Producto" />
        <div class="box"  >
            <h1 class="title">Producto Registrado: </h1>
            <li>Producto: <jsp:getProperty name="producto" property="producto" /></li>
            <li>Categoria: <jsp:getProperty name="producto" property="categoria" /></li>
            <li>Existencia:<jsp:getProperty name="producto" property="existencia" /> </li>
            <li>Precio: <jsp:getProperty name="producto" property="precio" /></li>
            <button type="submit"> <a style="color:#fff;" href="index.jsp">Volver</a></button>
        </div>
    </body>
</html>
