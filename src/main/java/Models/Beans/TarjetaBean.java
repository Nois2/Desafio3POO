package Models.Beans;

import java.io.*;

public class TarjetaBean {
    private String nombre;
    private String numeroTarjeta; // Cambié el nombre de la variable para seguir convenciones de nomenclatura
    private String pin; // Cambié el nombre de la variable para seguir convenciones de nomenclatura
    private String pais;
    private Double saldo;

    // Constructor vacío
    public TarjetaBean() {
    }

    // Constructor con todos los campos
    public TarjetaBean(String nombre, String numeroTarjeta, String pin, String pais, Double saldo) {
        this.nombre = nombre;
        this.numeroTarjeta = numeroTarjeta;
        this.pin = pin;
        this.pais = pais;
        this.saldo = saldo;
    }

    // Getters y setters para todos los campos
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getNumeroTarjeta() {
        return numeroTarjeta;
    }

    public void setNumeroTarjeta(String numeroTarjeta) {
        this.numeroTarjeta = numeroTarjeta;
    }

    public String getPin() {
        return pin;
    }

    public void setPin(String pin) {
        this.pin = pin;
    }

    public String getPais() {
        return pais;
    }

    public void setPais(String pais) {
        this.pais = pais;
    }

    public Double getSaldo() {
        return saldo;
    }

    public void setSaldo(Double saldo) {
        this.saldo = saldo;
    }

    /*Operaciones Tarjeta esto es asi porque asi lo pide los requemientos*/

    /*Insertar datos en CSV*/
    public void guardarEnCSV() throws IOException {
        // Obtener la ruta del archivo en la carpeta resources del proyecto
        String rutaArchivo = "../../../src/main/resources/usuarios.txt";
        File archivo = new File(rutaArchivo);
        boolean existe = archivo.createNewFile();
        PrintWriter pw = null;
        try {
            pw = new PrintWriter(new BufferedWriter(new FileWriter(archivo, true)));
            if (!existe) {
                // Si el archivo no existe, escribimos la cabecera
                pw.println("Nombre,Pais,NumTarjeta,PIN,Saldo");
            }
            if(this.nombre == null || this.nombre.isEmpty()){this.nombre = "Jonh Doe";}
            pw.println(this.nombre + "," + this.pais + "," + this.numeroTarjeta + "," + this.pin+ "," + this.saldo);

            // Imprimir la ruta donde se creó el archivo
            System.out.println("El archivo se ha creado en: " + archivo.getAbsolutePath());
        } finally {
            if (pw != null) {
                pw.close();
            }
        }
    }
    private void guardarEnCSV(String nombre, String pais, String numTarjeta, String pin) throws IOException {
        // Obtener la ruta del archivo en la carpeta resources del proyecto
        String rutaArchivo = "src/main/resources/usuarios.txt";
        File archivo = new File(rutaArchivo);
        boolean existe = archivo.createNewFile();
        PrintWriter pw = null;
        try {
            pw = new PrintWriter(new BufferedWriter(new FileWriter(archivo, true)));
            if (!existe) {
                // Si el archivo no existe, escribimos la cabecera
                pw.println("Nombre,Pais,NumTarjeta,PIN,Saldo");
            }
            if(this.nombre == null || this.nombre.isEmpty()){this.nombre = "Jonh Doe";}

            pw.println(nombre + "," + pais + "," + numTarjeta + "," + pin+ "," + saldo);

            // Imprimir la ruta donde se creó el archivo
            System.out.println("El archivo se ha creado en: " + archivo.getAbsolutePath());
        } finally {
            if (pw != null) {
                pw.close();
            }
        }
    }


    /*Verificar si existe ese dato*/
    public boolean verificarCredenciales(String numTarjeta, String pin) throws IOException {
        String rutaArchivo = "../../../src/main/resources/usuarios.txt";
        BufferedReader br = null;
        String linea = "";

        try {
            br = new BufferedReader(new FileReader(rutaArchivo));
            // Leer el archivo línea por línea
            while ((linea = br.readLine()) != null) {
                // Dividir la línea en sus partes (campos separados por coma)
                String[] datosUsuario = linea.split(",");
                // Verificar si las credenciales coinciden con algún usuario en el archivo CSV
                if (datosUsuario[2].equals(numTarjeta) && datosUsuario[3].equals(pin)) {
                    return true; // Las credenciales son válidas
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
            // Manejar la excepción adecuadamente según tus necesidades
        } finally {
            if (br != null) {
                br.close(); // Cerrar el BufferedReader
            }
        }

        return false; // Las credenciales no son válidas
    }



    /*Verificar si existe ese dato por medio del mismo objeto*/
    public boolean verificarCredenciales() throws IOException {
        String rutaArchivo = "../../../src/main/resources/usuarios.txt";
        BufferedReader br = null;
        String linea = "";

        try {
            br = new BufferedReader(new FileReader(rutaArchivo));
            // Leer el archivo línea por línea
            while ((linea = br.readLine()) != null) {
                // Dividir la línea en sus partes (campos separados por coma)
                String[] datosUsuario = linea.split(",");
                // Verificar si las credenciales coinciden con algún usuario en el archivo CSV
                if (datosUsuario[2].equals(this.numeroTarjeta) && datosUsuario[3].equals(this.pin)) {
                    return true; // Las credenciales son válidas
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
            // Manejar la excepción adecuadamente según tus necesidades
        } finally {
            if (br != null) {
                br.close(); // Cerrar el BufferedReader
            }
        }

        return false; // Las credenciales no son válidas
    }


}