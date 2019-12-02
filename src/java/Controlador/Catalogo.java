/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Config.Conexion;
import Model.DAO.ProductoDAO;
import Modelo.Producto;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
public class Catalogo extends HttpServlet {
    Producto prd = new Producto();
    ProductoDAO prdDAO = new ProductoDAO();
    List<Producto> productos = new ArrayList<>();
        protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            String menu = request.getParameter("menu");
            try {
                 productos = prdDAO.Listar();
                  request.setAttribute("productos", productos);
                  request.getRequestDispatcher("index.jsp").forward(request, response);

                  
            } catch (Exception e) {


            }
        }
     
     
        public void addCart (HttpServletRequest request, HttpServletResponse response){

            


        }
     
}
