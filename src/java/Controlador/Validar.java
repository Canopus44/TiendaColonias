/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Cliente;
import Model.DAO.ClienteDAO;
import Model.DAO.ProductoDAO;
import Modelo.Producto;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author canop
 */
public class Validar extends HttpServlet {

    ClienteDAO clDAO = new ClienteDAO();
    Cliente cl = new Cliente();
    List<Producto> productos = new ArrayList<>();
    ProductoDAO prdDAO = new ProductoDAO();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {       
        String login = request.getParameter("login");
        if (login.equalsIgnoreCase("Ingresar")) {
            String correo = request.getParameter("txtcorreo");
            String pass = request.getParameter("txtpassword");
            cl = clDAO.Validar(correo, pass);
            if (cl.getEmail() != null) {
                if (cl.getRol().equals("admin")) {
                    request.setAttribute("usuario", cl);
                    request.setAttribute("admin", cl);
                    request.getRequestDispatcher("Controlador?menu=admin").forward(request, response);
                } else {                    
                    request.setAttribute("usuario", cl);
                    request.getRequestDispatcher("Controlador?menu=Catalogo").forward(request, response);
                }
            } else {
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
        }

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
