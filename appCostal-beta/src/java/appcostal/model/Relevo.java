package appcostal.model;
// Generated 27-may-2014 13:22:48 by Hibernate Tools 3.6.0



/**
 * Relevo generated by hbm2java
 */
public class Relevo  implements java.io.Serializable {


     private Integer idrelevo;
     private Procesion procesion;
     private String lugar;

    public Relevo() {
    }

	
    public Relevo(Procesion procesion) {
        this.procesion = procesion;
    }
    public Relevo(Procesion procesion, String lugar) {
       this.procesion = procesion;
       this.lugar = lugar;
    }
   
    public Integer getIdrelevo() {
        return this.idrelevo;
    }
    
    public void setIdrelevo(Integer idrelevo) {
        this.idrelevo = idrelevo;
    }
    public Procesion getProcesion() {
        return this.procesion;
    }
    
    public void setProcesion(Procesion procesion) {
        this.procesion = procesion;
    }
    public String getLugar() {
        return this.lugar;
    }
    
    public void setLugar(String lugar) {
        this.lugar = lugar;
    }




}


