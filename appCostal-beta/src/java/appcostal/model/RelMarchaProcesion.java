package appcostal.model;
// Generated 27-may-2014 23:53:05 by Hibernate Tools 3.6.0



/**
 * RelMarchaProcesion generated by hbm2java
 */
public class RelMarchaProcesion  implements java.io.Serializable {


     private RelMarchaProcesionId id;
     private Marcha marcha;
     private Procesion procesion;
     private String lugar;

    public RelMarchaProcesion() {
    }

    public RelMarchaProcesion(RelMarchaProcesionId id, Marcha marcha, Procesion procesion, String lugar) {
       this.id = id;
       this.marcha = marcha;
       this.procesion = procesion;
       this.lugar = lugar;
    }
   
    public RelMarchaProcesionId getId() {
        return this.id;
    }
    
    public void setId(RelMarchaProcesionId id) {
        this.id = id;
    }
    public Marcha getMarcha() {
        return this.marcha;
    }
    
    public void setMarcha(Marcha marcha) {
        this.marcha = marcha;
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


