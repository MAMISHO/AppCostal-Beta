package appcostal.model;
// Generated 27-may-2014 23:53:05 by Hibernate Tools 3.6.0


import java.util.HashSet;
import java.util.Set;

/**
 * Marcha generated by hbm2java
 */
public class Marcha  implements java.io.Serializable {


     private Integer idmarcha;
     private String nombre;
     private int duracion;
     private Set relMarchaProcesions = new HashSet(0);

    public Marcha() {
    }

	
    public Marcha(String nombre, int duracion) {
        this.nombre = nombre;
        this.duracion = duracion;
    }
    public Marcha(String nombre, int duracion, Set relMarchaProcesions) {
       this.nombre = nombre;
       this.duracion = duracion;
       this.relMarchaProcesions = relMarchaProcesions;
    }
   
    public Integer getIdmarcha() {
        return this.idmarcha;
    }
    
    public void setIdmarcha(Integer idmarcha) {
        this.idmarcha = idmarcha;
    }
    public String getNombre() {
        return this.nombre;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    public int getDuracion() {
        return this.duracion;
    }
    
    public void setDuracion(int duracion) {
        this.duracion = duracion;
    }
    public Set getRelMarchaProcesions() {
        return this.relMarchaProcesions;
    }
    
    public void setRelMarchaProcesions(Set relMarchaProcesions) {
        this.relMarchaProcesions = relMarchaProcesions;
    }




}


