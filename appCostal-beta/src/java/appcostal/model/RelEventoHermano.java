package appcostal.model;
// Generated 27-may-2014 23:53:05 by Hibernate Tools 3.6.0



/**
 * RelEventoHermano generated by hbm2java
 */
public class RelEventoHermano  implements java.io.Serializable {


     private RelEventoHermanoId id;
     private Hermano hermano;
     private Evento evento;
     private boolean asiste;

    public RelEventoHermano() {
    }

    public RelEventoHermano(RelEventoHermanoId id, Hermano hermano, Evento evento, boolean asiste) {
       this.id = id;
       this.hermano = hermano;
       this.evento = evento;
       this.asiste = asiste;
    }
   
    public RelEventoHermanoId getId() {
        return this.id;
    }
    
    public void setId(RelEventoHermanoId id) {
        this.id = id;
    }
    public Hermano getHermano() {
        return this.hermano;
    }
    
    public void setHermano(Hermano hermano) {
        this.hermano = hermano;
    }
    public Evento getEvento() {
        return this.evento;
    }
    
    public void setEvento(Evento evento) {
        this.evento = evento;
    }
    public boolean isAsiste() {
        return this.asiste;
    }
    
    public void setAsiste(boolean asiste) {
        this.asiste = asiste;
    }




}


