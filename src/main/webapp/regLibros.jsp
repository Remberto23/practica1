<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="./styles.css">
    </head>
    <body>
        <form action="ProcesaServletLibro" class="box" method="POST">
            <h1 class="title">Registro de Libros</h1>

            <label>Titulo. . .: </label>
            <input name="titulo" type="text" placeholder="Titulo..." autofocus><br><br>

            <label>Autor. . .: </label>
            <input name="autor" type="text" placeholder="Autor..." ><br><br>

            <label>Resumen: </label><br>
            <textarea name="resumen" rows="6" cols="45px" placeholder="Escribe aquí tus comentarios"></textarea><br><br>

            <label>Medio: </label>
            <br>
            <input type="radio" name="medio" value="Fisico" id="fis">
            <label for="fis">Fisico</label><br>
            <input type="radio" name="medio" value="Magnetico" id="mag"> 
            <label for="mag">Magnetico</label>
            <button type="submit">Envia</button>
        </form>
    </body>
</html>
