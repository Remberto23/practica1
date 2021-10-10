<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="./styles.css">
    </head>
    <body>
        <form action="ProcesaServletCurso" class="box" method="POST">
            <h1 class="title">Inscripcion en Curso</h1>

            <label>Nombre. . .: </label>
            <input name="nombre" type="text" placeholder="Nombre..." autofocus><br><br>

            <label>Apellidos: </label>
            <input name="apellido" type="text" placeholder="Apellidos..." ><br><br>

            <label>Curso. . . .: </label>
            <select class="option" name="curso" id="pais">
                <option value="EMERGENTES II">EMERGENTES II</option>
                <option value="Ing. Software">Ing. Software</option>
                <option value="Ing Sistemas I">Ing Sistemas I</option>
                <option value="SIG">SIG</option>
            </select>
            <label>opcion...</label<br><br>
            <input type="checkbox" name="acepto">

            <button type="submit">Envia</button>
        </form>
    </body>
</html>
