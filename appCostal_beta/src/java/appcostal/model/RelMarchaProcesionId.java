package appcostal.model;
// Generated 27-may-2014 9:14:37 by Hibernate Tools 3.6.0



/**
 * RelMarchaProcesionId generated by hbm2java
 */
public class RelMarchaProcesionId  implements java.io.Serializable {


     private int idmarcha;
     private int idprocesion;

    public RelMarchaProcesionId() {
    }

    public RelMarchaProcesionId(int idmarcha, int idprocesion) {
       this.idmarcha = idmarcha;
       this.idprocesion = idprocesion;
    }
   
    public int getIdmarcha() {
        return this.idmarcha;
    }
    
    public void setIdmarcha(int idmarcha) {
        this.idmarcha = idmarcha;
    }
    public int getIdprocesion() {
        return this.idprocesion;
    }
    
    public void setIdprocesion(int idprocesion) {
        this.idprocesion = idprocesion;
    }


   public boolean equals(Object other) {
         if ( (this == other ) ) return true;
		 if ( (other == null ) ) return false;
		 if ( !(other instanceof RelMarchaProcesionId) ) return false;
		 RelMarchaProcesionId castOther = ( RelMarchaProcesionId ) other; 
         
		 return (this.getIdmarcha()==castOther.getIdmarcha())
 && (this.getIdprocesion()==castOther.getIdprocesion());
   }
   
   public int hashCode() {
         int result = 17;
         
         result = 37 * result + this.getIdmarcha();
         result = 37 * result + this.getIdprocesion();
         return result;
   }   


}


