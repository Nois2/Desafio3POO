package Controllers;

import Models.Beans.TarjetaBean;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import static Models.Validaciones.TarjetaValidaciones.*;

@WebServlet(name = "RegisterController", value = "/RegisterController")

public class RegisterController extends HttpServlet {
    public void init() {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/PageErrors/errorPage.jsp");
        rd.forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Double saldo = 0.0;
        if (!request.getParameter("Saldo").isEmpty())
        {saldo = Double.parseDouble(request.getParameter("Saldo"));}
        TarjetaBean tj = new TarjetaBean(
                request.getParameter("Nombre"),
                request.getParameter("NumTarjeta"),
                request.getParameter("PIN"),
                request.getParameter("Pais"),
                saldo);

        if(isValidData(tj)){
            tj.guardarEnCSV();
            response.sendRedirect("login.jsp");
        }
        else {
            RequestDispatcher rd = request.getRequestDispatcher("registroUsuario.jsp");
            request.setAttribute("mensaje", "Datos invalidos");
            rd.forward(request, response);
        }


    }

    public void destroy() {

    }

}

