
package com.emergentes;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ProcesaServletLibro", urlPatterns = {"/ProcesaServletLibro"})
public class ProcesaServletLibro extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        //recibo datos del formulario
        String titulo = request.getParameter("titulo");
        String autor = request.getParameter("autor");
        String resumen = request.getParameter("resumen");
        String medio = request.getParameter("medio");
        //instancia un objeto a partir de la clase curso
        Libros lib = new Libros();
        //Encapsular los datos recibidos en el objeto lib
        lib.setTitulo(titulo);
        lib.setAutor(autor);
        lib.setResumen(resumen);
        lib.setMedio(medio);
         // Colocar al objeto lib como atributo de request
         request.setAttribute("libro", lib);
         //Derivamos el control a outLibro.jsp incluye al objeto request
         request.getRequestDispatcher("outLibro.jsp").forward(request, response);
        
    }
}
