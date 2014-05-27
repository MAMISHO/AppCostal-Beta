package appcostal.model;
// Generated 27-may-2014 23:28:15 by Hibernate Tools 3.6.0


import java.util.HashSet;
import java.util.Set;

/**
 * Paso generated by hbm2java
 */
public class Paso  implements java.io.Serializable {


     private Integer idpaso;
     private Hermandad hermandad;
     private String nombre;
     private String tipo;
     private Set igualas = new HashSet(0);
     private Set procesions = new HashSet(0);
     private Set eventos = new HashSet(0);

    public Paso() {
    }

	
    public Paso(Hermandad hermandad, String nombre, String tipo) {
        this.hermandad = hermandad;
        this.nombre = nombre;
        this.tipo = tipo;
    }
    public Paso(Hermandad hermandad, String nombre, String tipo, Set igualas, Set procesions, Set eventos) {
       this.hermandad = hermandad;
       this.nombre = nombre;
       this.tipo = tipo;
       this.igualas = igualas;
       this.procesions = procesions;
       this.eventos = eventos;
    }
   
    public Integer getIdpaso() {
        return this.idpaso;
    }
    
    public void setIdpaso(Integer idpaso) {
        this.idpaso = idpaso;
    }
    public Hermandad getHermandad() {
        return this.hermandad;
    }
    
    public void setHermandad(Hermandad hermandad) {
        this.hermandad = hermandad;
    }
    public String getNombre() {
        return this.nombre;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    public String getTipo() {
        return this.tipo;
    }
    
    public void setTipo(String tipo) {
        this.tipo = tipo;
    }
    public Set getIgualas() {
        return this.igualas;
    }
    
    public void setIgualas(Set igualas) {
        this.igualas = igualas;
    }
    public Set getProcesions() {
        return this.procesions;
    }
    
    public void setProcesions(Set procesions) {
        this.procesions = procesions;
    }
    public Set getEventos() {
        return this.eventos;
    }
    
    public void setEventos(Set eventos) {
        this.eventos = eventos;
    }




}


