package appcostal.model;
// Generated 14-may-2014 3:10:36 by Hibernate Tools 3.6.0


import java.util.Date;

/**
 * Evento generated by hbm2java
 */
public class Evento  implements java.io.Serializable {


     private Integer idevento;
     private Paso paso;
     private Date fecha;
     private String descripcion;

    public Evento() {
    }

    public Evento(Paso paso, Date fecha, String descripcion) {
       this.paso = paso;
       this.fecha = fecha;
       this.descripcion = descripcion;
    }
   
    public Integer getIdevento() {
        return this.idevento;
    }
    
    public void setIdevento(Integer idevento) {
        this.idevento = idevento;
    }
    public Paso getPaso() {
        return this.paso;
    }
    
    public void setPaso(Paso paso) {
        this.paso = paso;
    }
    public Date getFecha() {
        return this.fecha;
    }
    
    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }
    public String getDescripcion() {
        return this.descripcion;
    }
    
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }




}

