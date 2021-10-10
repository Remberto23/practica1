
package com.emergentes;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ProcesaServletUsuario", urlPatterns = {"/ProcesaServletUsuario"})
public class ProcesaServletUsuario extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //recibo datos del formulario
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String correo = request.getParameter("correo");
        String pass = request.getParameter("pass");
        //instancia un objeto a partir de la clase curso
        Usuario usu = new Usuario();
        //Encapsular los datos recibidos en el objeto per
         usu.setNombre(nombre);
         usu.setApellido(apellido);
         usu.setCorreo(correo);
         usu.setPass(pass);
         // Colocar al objeto per como atributo de request
         request.setAttribute("usuario", usu);
         //Derivamos el control a output.jsp incluye al objeto request
         request.getRequestDispatcher("outUsuario.jsp").forward(request, response);
    }
}
