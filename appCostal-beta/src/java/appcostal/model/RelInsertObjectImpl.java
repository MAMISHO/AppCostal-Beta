/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package appcostal.model;

import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author MAMISHO
 */
public class RelInsertObjectImpl implements RelInsertObject {
        
    public void create(RelHermanoPaso rhp) {
        String sql = "insert into rel_hermano_paso(dni,idpaso,escapataz,escostalero) values (?,?,?,?)";
        
        try {
            PreparedStatement pstmt = RelInsert.createConnection().prepareStatement(sql);
            pstmt.setString(1, rhp.getHermano().getDni());
            pstmt.setInt(2, rhp.getPaso().getIdpaso());
            //pstmt.setString(3, cliente.getDireccion());
            pstmt.setBoolean(3, rhp.isEscapataz());
            pstmt.setBoolean(4, rhp.isEscostalero());
            pstmt.executeUpdate();
            //pstmt.executeQuery();
            
        } catch (SQLException ex) {
            System.out.println(ex);
        } finally {
            RelInsert.closeConnection();
        }
    }
    
}
