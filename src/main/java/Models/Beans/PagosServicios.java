package Models.Beans;

public class PagosServicios {
    public String id;
    public String nombre;
    public Double monto;
    public PagosServicios() {}

    public PagosServicios(String id, String nombre, Double monto) {
        this.id = id;
        this.nombre = nombre;
        this.monto = monto;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public Double getMonto() {
        return monto;
    }

    public void setMonto(Double monto) {
        this.monto = monto;
    }
}
