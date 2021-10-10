package com.emergentes;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ProcesaServletCurso", urlPatterns = {"/ProcesaServletCurso"})
public class ProcesaServletCurso extends HttpServlet {

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
        String curso = request.getParameter("curso");
        //instancia un objeto a partir de la clase curso
        Curso cur = new Curso();
        //Encapsular los datos recibidos en el objeto cur
        cur.setNombre(nombre);
        cur.setApellido(apellido);
        cur.setCurso(curso);
        // Colocar al objeto cur como atributo de request
        request.setAttribute("curso", cur);
        //Derivamos el control a outCurso.jsp incluye al objeto request
        request.getRequestDispatcher("outCurso.jsp").forward(request, response);
    }
}
