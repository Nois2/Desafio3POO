package Models.Validaciones;

import Models.Beans.PagosBean;

import java.util.regex.Pattern;

public class PagoServiciosValidaciones {
    public static boolean isIdServiceValid(String idService) {
        return Pattern.matches("\\d{10}", idService);


    }

    public static boolean isMontoValid(Double valor) {
        return valor >= 0.0;
    }

    public static boolean isNameServiceValid(String descriptionService) {
        return descriptionService.length() >= 5;
    }

    public static boolean isNombreServiceValid(PagosBean pagosServicios) {
        return (
                isMontoValid(pagosServicios.getMonto()) &&
                        isIdServiceValid(pagosServicios.getId())
        && isNameServiceValid(pagosServicios.getNombre()));
    }
    public static boolean isNombreServiceWithoutNameServiceValid(PagosBean pagosServicios) {
        return(
                isMontoValid(pagosServicios.getMonto()) &&
                        isIdServiceValid(pagosServicios.getId())
        );
    }


}
