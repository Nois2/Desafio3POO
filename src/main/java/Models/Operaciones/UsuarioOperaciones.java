package Models.Operaciones;

import java.io.*;

public class UsuarioOperaciones {
    private void guardarEnCSV(String nombre, String pais, String numTarjeta, String pin) throws IOException {
        // Obtener la ruta del archivo en la carpeta resources del proyecto
        String rutaArchivo = "../../../src/main/resources/usuarios.txt";
        File archivo = new File(rutaArchivo);
        boolean existe = archivo.createNewFile();
        PrintWriter pw = null;
        try {
            pw = new PrintWriter(new BufferedWriter(new FileWriter(archivo, true)));
            if (!existe) {
                // Si el archivo no existe, escribimos la cabecera
                pw.println("Nombre,Pais,NumTarjeta,PIN");
            }
            pw.println(nombre + "," + pais + "," + numTarjeta + "," + pin);

            // Imprimir la ruta donde se creó el archivo
            System.out.println("El archivo se ha creado en: " + archivo.getAbsolutePath());
        } finally {
            if (pw != null) {
                pw.close();
            }
        }
    }
}
