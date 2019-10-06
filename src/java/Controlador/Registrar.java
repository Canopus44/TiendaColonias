/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Model.DAO.ClienteDAO;
import Modelo.Cliente;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author canop
 */
public class Registrar extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    ClienteDAO clDAO = new ClienteDAO();
    Cliente cl = new Cliente();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String registrar = request.getParameter("registrar");
        if (registrar.equalsIgnoreCase("Registrar")) {
            String documento = request.getParameter("txtdocumento");
            int doc = Integer.parseInt(documento);
            String tipoId = "CC";
            String nombre = request.getParameter("txtnombre");
            String apellido = request.getParameter("txtapellido");
            String correo = request.getParameter("txtcorreo");
            String telefono = request.getParameter("txttelefono");
            String dir = request.getParameter("txtdireccion");
            String Cod_postal = "0";
            String ciudad = request.getParameter("txtciudad");
            String depto = request.getParameter("txtdepartamento");
            String pais = request.getParameter("txtpais");
            String password = request.getParameter("txtpassword");
            String foto = " ";
            String rol = "user";
            String des = "0";
            
            cl.setNro_Doc(doc);
            cl.setTpo_Id(tipoId);
            cl.setNombre(nombre);
            cl.setApellido(apellido);
            cl.setEmail(correo);
            cl.setTelefono(telefono);
            cl.setDirecc(dir);
            cl.setCod_Postal(Cod_postal);
            cl.setCiudad(ciudad);
            cl.setPais(pais);
            cl.setPswd(password);
            cl.setFoto(foto);
            cl.setRol(rol);
            cl.setDescuento(des);
            cl.setDepto(depto);
            
            if (correo != null) {
                clDAO.Registrar(cl);
                request.setAttribute("usuario", cl);
                request.getRequestDispatcher("Controlador?accion=shop").forward(request, response);
            }

        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
