package Controlador;

import Model.DAO.ClienteDAO;
import Modelo.Cliente;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author canop
 */
public class Controlador extends HttpServlet {

    Cliente cl = new Cliente();
    ClienteDAO clDAO = new ClienteDAO();
    int idc;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String menu = request.getParameter("menu");
        String accion = request.getParameter("accion");
        if (menu.equals("admin")) {
            request.getRequestDispatcher("paneladmin.jsp").forward(request, response);
        }
        if (menu.equals("shop")) {
            request.getRequestDispatcher("shop.jsp").forward(request, response);
        }

        if (menu.equals("Producto")) {
            request.getRequestDispatcher("Admin/Producto.jsp").forward(request, response);
        }

        if (menu.equals("Venta")) {
            request.getRequestDispatcher("Admin/Ventas.jsp").forward(request, response);
        }

        if (menu.equals("NuevaVenta")) {
            request.getRequestDispatcher("Admin/NuevaVenta.jsp").forward(request, response);
        }

        if (menu.equals("Cliente")) {
            switch (accion) {
                case "Listar":
                    List lista = clDAO.Listar();
                    request.setAttribute("clientes", lista);
                    break;
                case "Agregar":
                    String documento = request.getParameter("txtdocumento");
                    int doc = Integer.parseInt(documento);
                    String tipoId = "CC";
                    String nombre = request.getParameter("txtnombre");
                    String apellido = request.getParameter("txtapellido");
                    String correo = request.getParameter("txtcorreo");
                    String telefono = request.getParameter("txttelefono");
                    String dir = request.getParameter("txtdireccion");
                    String Cod_postal = request.getParameter("txtcodpostal");
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

                    clDAO.Registrar(cl);
                    
                    request.getRequestDispatcher("Controlador?menu=Cliente&accion=Listar").forward(request, response);
                    break;
                case "Editar":
                    idc = Integer.parseInt(request.getParameter("id"));
                    Cliente c = clDAO.listarId(idc);
                    request.setAttribute("cliente", c);
                    request.getRequestDispatcher("Controlador?menu=Cliente&accion=Listar").forward(request, response);
                    break;
                case "Actualizar":
                    String _documento = request.getParameter("txtdocumento");
                    int _doc = Integer.parseInt(_documento);
                    String _tipoId = "CC";
                    String _nombre = request.getParameter("txtnombre");
                    String _apellido = request.getParameter("txtapellido");
                    String _correo = request.getParameter("txtcorreo");
                    String _telefono = request.getParameter("txttelefono");
                    String _dir = request.getParameter("txtdireccion");
                    String _Cod_postal = request.getParameter("txtcodpostal");
                    String _ciudad = request.getParameter("txtciudad");
                    String _depto = request.getParameter("txtdepartamento");
                    String _pais = request.getParameter("txtpais");
                    String _password = request.getParameter("txtpassword");
                    String _foto = " ";
                    String _rol = "user";
                    String _des = "0";
                    
                    clDAO.Actualizar(_doc, _tipoId, _correo, _telefono, _dir, _Cod_postal, _ciudad, _depto, _pais, _password, _foto, _rol, _des);
                    
                    request.getRequestDispatcher("Controlador?menu=Cliente&accion=Listar").forward(request, response);
                    break;    
                case "Eliminar":
                    break;
                default:
                    throw new AssertionError();
            }
            request.getRequestDispatcher("Admin/Cliente.jsp").forward(request, response);
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
