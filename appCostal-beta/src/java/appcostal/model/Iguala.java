package appcostal.model;
// Generated 27-may-2014 23:53:05 by Hibernate Tools 3.6.0


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Iguala generated by hbm2java
 */
public class Iguala  implements java.io.Serializable {


     private Integer idiguala;
     private Paso paso;
     private String descripcion;
     private Date fecha;
     private Set relIgualaHermanos = new HashSet(0);

    public Iguala() {
    }

	
    public Iguala(Paso paso) {
        this.paso = paso;
    }
    public Iguala(Paso paso, String descripcion, Date fecha, Set relIgualaHermanos) {
       this.paso = paso;
       this.descripcion = descripcion;
       this.fecha = fecha;
       this.relIgualaHermanos = relIgualaHermanos;
    }
   
    public Integer getIdiguala() {
        return this.idiguala;
    }
    
    public void setIdiguala(Integer idiguala) {
        this.idiguala = idiguala;
    }
    public Paso getPaso() {
        return this.paso;
    }
    
    public void setPaso(Paso paso) {
        this.paso = paso;
    }
    public String getDescripcion() {
        return this.descripcion;
    }
    
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    public Date getFecha() {
        return this.fecha;
    }
    
    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }
    public Set getRelIgualaHermanos() {
        return this.relIgualaHermanos;
    }
    
    public void setRelIgualaHermanos(Set relIgualaHermanos) {
        this.relIgualaHermanos = relIgualaHermanos;
    }




}


