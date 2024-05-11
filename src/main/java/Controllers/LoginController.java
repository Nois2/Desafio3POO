package Controllers;

import Models.Beans.TarjetaBean;
import Models.Beans.UsuarioBean;
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


      // Crear un objeto TarjetaBean para manejar los datos de la tarjeta
        TarjetaBean tarjetaBean = new TarjetaBean();

        // Obtener los parámetros de la solicitud (número de tarjeta y PIN)
        String numTarjeta = request.getParameter("NumTarjeta");
        String pin = request.getParameter("PIN");

        // Validar los datos de inicio de sesión
        if (isValidDataLogin(numTarjeta, pin)) {
            // Si los datos son válidos, configurar los datos en el objeto TarjetaBean
            tarjetaBean.setNumeroTarjeta(numTarjeta);
            tarjetaBean.setPin(pin);

            // Verificar las credenciales de la tarjeta
            if (tarjetaBean.verificarCredenciales()) {
                // Si las credenciales son válidas, guardar los datos del usuario en la sesión
                HttpSession session = request.getSession();
                TarjetaBean datos = tarjetaBean.ObtenerDatosPorCredenciales(tarjetaBean.getNumeroTarjeta(), tarjetaBean.getPin());
                session.setAttribute("datosUsuario", datos);
                /*Lineas para validar que deberas se envia los datos
                for (TarjetaBean dato : datos) {
                    System.out.println(dato.getNombre());
                }
                //Fin de validacion que deberas se envian a los datos
*/
                RequestDispatcher rd = request.getRequestDispatcher("principal.jsp");


                // Redirigir a la página principal
                rd.forward(request, response);
            } else {
                // Si las credenciales son inválidas, redirigir a una página de error
                RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                request.setAttribute("mensaje", "Usuario no valido");
                rd.forward(request, response);
            }
        } else {
            // Si los datos de inicio de sesión no son válidos, redirigir a una página de error
            RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/PageErrors/errorPage.jsp");
            rd.forward(request, response);
        }


    }

    public void destroy() {

    }

}

