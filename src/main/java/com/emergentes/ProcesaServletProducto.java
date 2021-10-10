
package com.emergentes;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ProcesaServletProducto", urlPatterns = {"/ProcesaServletProducto"})
public class ProcesaServletProducto extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        //recibo datos del formulario
        String producto = request.getParameter("producto");
        String categoria = request.getParameter("categoria");
        String existencia = request.getParameter("existencia");
        String precio = request.getParameter("precio");
        //instancia un objeto a partir de la clase curso
        Producto prod = new Producto();
        //Encapsular los datos recibidos en el objeto per
        prod.setProducto(producto);
        prod.setCategoria(categoria);
        prod.setExistencia(existencia);
        prod.setPrecio(precio);
         // Colocar al objeto per como atributo de request
         request.setAttribute("producto", prod);
         //Derivamos el control a output.jsp incluye al objeto request
         request.getRequestDispatcher("outProducto.jsp").forward(request, response);
    }
}
