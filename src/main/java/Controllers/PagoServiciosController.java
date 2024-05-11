package Controllers;

import Models.Beans.PagosBean;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import static Models.Validaciones.PagoServiciosValidaciones.*;

@WebServlet(name = "PagoServiciosController", value = "/PagoServiciosController")

public class PagoServiciosController extends HttpServlet {
    public void init() {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/PageErrors/errorPage.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PagosBean pg = new PagosBean();
        Double monto = 0.0;
        if(request.getParameter("monto") != null && request.getParameter("id") != null) {
            try {
                monto = Double.parseDouble(request.getParameter("monto"));
                pg.setId(request.getParameter("id"));
                pg.setMonto(monto);

            } catch (NumberFormatException e) {
                // Manejo de error si el parámetro "monto" no es un número válido
                e.printStackTrace(); // Opcional: imprime el rastreo de la pila del error
                // Aquí puedes agregar un mensaje de error o redireccionar a una página de error
            }
        }
    }


    public void destroy() {

    }

}

