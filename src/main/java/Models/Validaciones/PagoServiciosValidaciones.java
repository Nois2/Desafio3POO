package Models.Validaciones;

import Models.Beans.PagosServicios;

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

    public static boolean isNombreServiceValid(PagosServicios pagosServicios) {
        return (
                isMontoValid(pagosServicios.getMonto()) &&
                        isIdServiceValid(pagosServicios.getId())
        && isNameServiceValid(pagosServicios.getNombre()));
    }
    public static boolean isNombreServiceWithoutNameServiceValid(PagosServicios pagosServicios) {
        return(
                isMontoValid(pagosServicios.getMonto()) &&
                        isIdServiceValid(pagosServicios.getId())
        );
    }


}
