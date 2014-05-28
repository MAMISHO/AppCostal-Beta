package appcostal.model;
// Generated 27-may-2014 23:53:05 by Hibernate Tools 3.6.0



/**
 * RelIgualaHermanoId generated by hbm2java
 */
public class RelIgualaHermanoId  implements java.io.Serializable {


     private int idiguala;
     private String dni;

    public RelIgualaHermanoId() {
    }

    public RelIgualaHermanoId(int idiguala, String dni) {
       this.idiguala = idiguala;
       this.dni = dni;
    }
   
    public int getIdiguala() {
        return this.idiguala;
    }
    
    public void setIdiguala(int idiguala) {
        this.idiguala = idiguala;
    }
    public String getDni() {
        return this.dni;
    }
    
    public void setDni(String dni) {
        this.dni = dni;
    }


   public boolean equals(Object other) {
         if ( (this == other ) ) return true;
		 if ( (other == null ) ) return false;
		 if ( !(other instanceof RelIgualaHermanoId) ) return false;
		 RelIgualaHermanoId castOther = ( RelIgualaHermanoId ) other; 
         
		 return (this.getIdiguala()==castOther.getIdiguala())
 && ( (this.getDni()==castOther.getDni()) || ( this.getDni()!=null && castOther.getDni()!=null && this.getDni().equals(castOther.getDni()) ) );
   }
   
   public int hashCode() {
         int result = 17;
         
         result = 37 * result + this.getIdiguala();
         result = 37 * result + ( getDni() == null ? 0 : this.getDni().hashCode() );
         return result;
   }   


}

