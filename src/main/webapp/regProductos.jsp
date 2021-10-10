<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="./styles.css">
    </head>
    <body>
        <form action="ProcesaServletProducto" class="box" method="POST">
            <h1 class="title">Registro de Producto</h1>
            <label>Producto: </label>
            <input name="producto" type="text" placeholder="Producto..." autofocus><br><br>
            <label>Categoria: </label>
            <select class="option" name="categoria" id="pais">
                <option value="Maletines">Maletines</option>
                <option value="Carteras">Carteras</option>
                <option value="Cinturones">Cinturones</option>
                <option value="Billeteras">Billeteras</option>
            </select><br><br>
            <label>Existencia: </label>
            <input name="existencia" type="number" min="1" placeholder="Existencia..." ><br><br>
            <label>Precio. . . .: </label>
            <input name="precio" type="number" min="1" placeholder="Precio..." >
            <button type="submit">Enviar</button>
        </form>
    </body>
</html>
