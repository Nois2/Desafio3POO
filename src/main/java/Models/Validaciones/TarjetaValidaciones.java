package Models.Validaciones;

import Models.Beans.TarjetaBean;

import java.util.regex.Pattern;

public class TarjetaValidaciones {
    // Métodos para validaciones
    public static boolean validarNombre(String nombrePropietario) {
        return nombrePropietario.length() >= 5;
    }

    public static boolean validarNumeroTarjeta(String numeroTarjeta) {
        return Pattern.matches("\\d{8}", numeroTarjeta);
    }

    public static boolean validarNumeroPIN(String numeroPIN) {
        return Pattern.matches("\\d{4}", numeroPIN);
    }

    public static boolean validarPaisOrigen(String paisOrigen) {
        String[] paisesValidos = {"Guatemala", "El Salvador", "Honduras", "Nicaragua", "Costa Rica", "Panamá", "Belice"};
        for (String pais : paisesValidos) {
            if (paisOrigen.equalsIgnoreCase(pais)) {
                return true;
            }
        }
        return false;
    }
    public static Boolean validarSalgo(Double saldo) {
        return saldo >= 0;
    }
    public static boolean isValidData(TarjetaBean tarjeta) {
        return validarNombre(tarjeta.getNombre()) &&
                validarNumeroTarjeta(tarjeta.getNumeroTarjeta()) &&
                validarNumeroPIN(tarjeta.getPin()) &&
                validarPaisOrigen(tarjeta.getPais());
    }
    public static boolean isValidDataWithOutNombrePropietario(TarjetaBean tarjeta) {
        return validarNumeroTarjeta(tarjeta.getNumeroTarjeta()) &&
                validarNumeroPIN(tarjeta.getPin()) &&
                validarPaisOrigen(tarjeta.getPais()) &&
                validarSalgo(tarjeta.getSaldo());
    }
    public static boolean isValidDataLogin(String numeroTarjeta, String numeroPIN) {
        return validarNumeroTarjeta(numeroTarjeta) && validarNumeroPIN(numeroPIN);
    }

}
