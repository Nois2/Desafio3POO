package Controllers;

import Models.Beans.TarjetaBean;
import Models.Validaciones.TarjetaValidaciones;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import static Models.Validaciones.TarjetaValidaciones.*;

@WebServlet(name = "LoginController", value = "/LoginController")

public class LoginController extends HttpServlet {
    public void init() {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/PageErrors/errorPage.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        TarjetaBean tarjetaBean = new TarjetaBean();
        String NumTarjeta = request.getParameter("NumTarjeta");
        String PIN = request.getParameter("PIN");
        if(isValidDataLogin(NumTarjeta,PIN)){
            tarjetaBean.setNumeroTarjeta(NumTarjeta);
            tarjetaBean.setPin(PIN);

            if (tarjetaBean.verificarCredenciales()){
                HttpSession session = request.getSession();

            }
        }
    }

    public void destroy() {

    }

}

