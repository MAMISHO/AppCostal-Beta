package appcostal.model;
// Generated 27-may-2014 23:53:05 by Hibernate Tools 3.6.0


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Procesion generated by hbm2java
 */
public class Procesion  implements java.io.Serializable {


     private Integer idprocesion;
     private Recorrido recorrido;
     private Paso paso;
     private String descripcion;
     private Date fecha;
     private boolean esensayo;
     private Set relMarchaProcesions = new HashSet(0);
     private Set relevos = new HashSet(0);

    public Procesion() {
    }

	
    public Procesion(Recorrido recorrido, Paso paso, Date fecha, boolean esensayo) {
        this.recorrido = recorrido;
        this.paso = paso;
        this.fecha = fecha;
        this.esensayo = esensayo;
    }
    public Procesion(Recorrido recorrido, Paso paso, String descripcion, Date fecha, boolean esensayo, Set relMarchaProcesions, Set relevos) {
       this.recorrido = recorrido;
       this.paso = paso;
       this.descripcion = descripcion;
       this.fecha = fecha;
       this.esensayo = esensayo;
       this.relMarchaProcesions = relMarchaProcesions;
       this.relevos = relevos;
    }
   
    public Integer getIdprocesion() {
        return this.idprocesion;
    }
    
    public void setIdprocesion(Integer idprocesion) {
        this.idprocesion = idprocesion;
    }
    public Recorrido getRecorrido() {
        return this.recorrido;
    }
    
    public void setRecorrido(Recorrido recorrido) {
        this.recorrido = recorrido;
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
    public boolean isEsensayo() {
        return this.esensayo;
    }
    
    public void setEsensayo(boolean esensayo) {
        this.esensayo = esensayo;
    }
    public Set getRelMarchaProcesions() {
        return this.relMarchaProcesions;
    }
    
    public void setRelMarchaProcesions(Set relMarchaProcesions) {
        this.relMarchaProcesions = relMarchaProcesions;
    }
    public Set getRelevos() {
        return this.relevos;
    }
    
    public void setRelevos(Set relevos) {
        this.relevos = relevos;
    }




}

