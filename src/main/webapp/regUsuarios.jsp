<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="./styles.css">
    </head>
    <body>
        <form action="ProcesaServletUsuario" class="box" method="POST">
            <h1 class="title">Registro de Usuario</h1>
            <label>Nombre. . . .: </label>
            <input name="nombre" type="text" placeholder="Nombre..." autofocus><br><br>
            <label>Apellidos .: </label>
            <input name="apellido" type="text" placeholder="Apellidos..." ><br><br>
            <label>Correo. . . .: </label>
            <input name="correo" type="email" placeholder="Correo..." ><br><br>
            <label>Contraseña</label>
            <input name="pass" type="password" placeholder="Contraseña..." >
            <button type="submit">Envia</button>
        </form>
    </body>
</html>
