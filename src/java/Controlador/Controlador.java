package Controlador;

import Model.DAO.ClienteDAO;
import Model.DAO.ProductoDAO;
import Model.DAO.ProveedorDAO;
import Model.DAO.ShopCartDAO;
import Modelo.Cliente;
import Modelo.Producto;
import Modelo.Proveedor;
import Modelo.ShopCart;
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
public class Controlador extends HttpServlet {

    Cliente cl = new Cliente();
    ClienteDAO clDAO = new ClienteDAO();
    Producto prd = new Producto();
    ProductoDAO prdDAO = new ProductoDAO();
    ShopCart shopcart = new ShopCart();
    ShopCartDAO shopDAO = new ShopCartDAO();
    Proveedor prvd = new Proveedor();
    ProveedorDAO prvdDAO = new ProveedorDAO();
    int idc, idp, idshop;

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
            switch (accion) {
                case "Listar":
                    List lista = prdDAO.Listar();
                    request.setAttribute("productos", lista);
                    break;
                case "Agregar":
                    String marca = request.getParameter("txtMarca");
                    String producto = request.getParameter("txtNomProducto");
                    String referencia = request.getParameter("txtReferencia");
                    String anoProduccion = request.getParameter("txtAnoInic");
                    String fmlaolfat = request.getParameter("txtFmlaolfat");
                    String notaSalida = request.getParameter("txtNotaSalida");
                    String notaFondo = request.getParameter("txtNotaFondo");
                    String categoria = request.getParameter("txtCategoria");
                    String oferta = request.getParameter("txtOferta");
                    String Genero = request.getParameter("txtGenero");
                    int Tipo = Integer.parseInt(request.getParameter("txtTipo"));
                    int Onzas = Integer.parseInt(request.getParameter("txtOnzas"));
                    double precioVenta = Double.parseDouble(request.getParameter("txtPrecioVenta"));
                    double decuento = Double.parseDouble(request.getParameter("txtDescuento"));
                    String notaCorazon = "0";
                    int stock = Integer.parseInt(request.getParameter("txtStock"));
                    double precioDescuento = 0;
                    double precioCompra = 0;

                    prd.setMarca(marca);
                    prd.setNombre_Prd(producto);
                    prd.setReferencia(referencia);
                    prd.setAno_Inic(anoProduccion);
                    prd.setFmlaolfat(fmlaolfat);
                    prd.setNota_Salida(notaSalida);
                    prd.setNota_Corazon(notaCorazon);
                    prd.setNota_Fondo(notaFondo);
                    prd.setCategoria(categoria);
                    prd.setTipo(Tipo);
                    prd.setOnzas(Onzas);
                    prd.setGenero(Genero);
                    prd.setOferta(oferta);
                    prd.setPrecio_Venta(precioVenta);
                    prd.setDescuento(decuento);
                    prd.setStock(stock);
                    prd.setPrecio_Descuento(precioDescuento);
                    prd.setPrecio_Compra(precioCompra);

                    /*
                    Se envia a registrar el producto en la Bd
                     */
                    prdDAO.Registrar(prd);

                    request.getRequestDispatcher("Controlador?menu=Producto&accion=Listar").forward(request, response);
                    break;
                case "Editar":
                    idp = Integer.parseInt(request.getParameter("id"));
                    Producto p = prdDAO.listarId(idp);
                    request.setAttribute("producto", p);
                    request.getRequestDispatcher("Controlador?menu=Producto&accion=Listar").forward(request, response);
                    break;
                case "Eliminar":
                    idp = Integer.parseInt(request.getParameter("id"));
                    cl.setId_Cl(idc);
                    clDAO.eliminar(idc);
                    request.getRequestDispatcher("Controlador?menu=Producto&accion=Listar").forward(request, response);
                    break;
                default:
                    throw new AssertionError();
            }
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
                    String id = request.getParameter("Id");
                    int clId = Integer.parseInt(id);
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

                    clDAO.Actualizar(clId, _doc, _tipoId, _correo, _telefono, _dir, _Cod_postal, _ciudad, _depto, _pais, _password, _foto, _rol, _des);

                    request.getRequestDispatcher("Controlador?menu=Cliente&accion=Listar").forward(request, response);
                    break;
                case "Eliminar":
                    idc = Integer.parseInt(request.getParameter("id"));
                    cl.setId_Cl(idc);
                    clDAO.eliminar(idc);
                    request.getRequestDispatcher("Controlador?menu=Cliente&accion=Listar").forward(request, response);
                    break;
                default:
                    throw new AssertionError();
            }
            request.getRequestDispatcher("Admin/Cliente.jsp").forward(request, response);
        }
        if (menu.equals("Catalogo")) {
            List catalog = prdDAO.Listar();
            request.setAttribute("catalog", catalog);
            request.getRequestDispatcher("index.jsp").forward(request, response);
            switch (accion) {
                case "Agregar":
                    idshop = Integer.parseInt(request.getParameter("id"));
                    Producto shopp = prdDAO.listarId(idshop);
                    String nombre = shopp.getNombre_Prd();
                    Double precio = shopp.getPrecio_Compra();
                    String imagen = shopp.getimagen();
                    Double total = 1.1;
                    int cantidad = 1;
                    shopcart.setbd_totalcarrito(total);
                    shopcart.setbd_nombreprod(nombre);
                    shopcart.setbd_imgprod(imagen);
                    shopcart.setbd_precioprod(precio);
                    shopcart.setbd_cantidad(cantidad);

                    shopDAO.AddShop(shopcart);

                    request.getRequestDispatcher("Controlador?menu=Catalogo").forward(request, response);
                    break;

                default:
                    throw new AssertionError();
            }
        }
        if (menu.equals("ShopCart")) {
            List ShopList = shopDAO.Listar();
            request.setAttribute("shoplist", ShopList);
            request.getRequestDispatcher("cart.jsp").forward(request, response);
            switch (accion) {
                case "Eliminar":
                    idshop = Integer.parseInt(request.getParameter("id"));
                    shopcart.setbd_idcarrito(idshop);
                    shopDAO.eliminar(idshop);
                    request.getRequestDispatcher("Controlador?menu=ShopCart").forward(request, response);
                    break;
                default:
                    throw new AssertionError();
            }
        }
        if (menu.equals("Proveedor")) {
            switch (accion) {
                case "Listar":
                    List lista = prvdDAO.Listar();
                    request.setAttribute("proveedor", lista);
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

                    request.getRequestDispatcher("Controlador?menu=Proveedor&accion=Listar").forward(request, response);
                    break;
                case "Editar":
                    idc = Integer.parseInt(request.getParameter("id"));
                    Proveedor p = prvdDAO.listarId(idc);
                    request.setAttribute("proveedor", p);
                    request.getRequestDispatcher("Controlador?menu=Proveedor&accion=Listar").forward(request, response);

                    break;
                case "Actualizar":
                    String id = request.getParameter("Id");
                    int clId = Integer.parseInt(id);
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

                    clDAO.Actualizar(clId, _doc, _tipoId, _correo, _telefono, _dir, _Cod_postal, _ciudad, _depto, _pais, _password, _foto, _rol, _des);

                    request.getRequestDispatcher("Controlador?menu=Proveedor&accion=Listar").forward(request, response);
                    break;
                case "Eliminar":
                    idc = Integer.parseInt(request.getParameter("id"));
                    cl.setId_Cl(idc);
                    clDAO.eliminar(idc);
                    request.getRequestDispatcher("Controlador?menu=Proveedor&accion=Listar").forward(request, response);
                    break;
                default:
                    throw new AssertionError();
            }
            request.getRequestDispatcher("Admin/Proveedor.jsp").forward(request, response);
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
