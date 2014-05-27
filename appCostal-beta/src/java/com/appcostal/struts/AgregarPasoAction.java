/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.appcostal.struts;

import appcostal.model.DAO;
import appcostal.model.Hermano;
import appcostal.model.RelHermanoPaso;
import appcostal.model.RelHermanoPasoId;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author MAMISHO
 */
public class AgregarPasoAction extends org.apache.struts.action.Action {

    /* forward name="success" path="" */
    private static final String SUCCESS = "success";

    /**
     * This is the action called from the Struts framework.
     *
     * @param mapping The ActionMapping used to select this instance.
     * @param form The optional ActionForm bean for this request.
     * @param request The HTTP Request we are processing.
     * @param response The HTTP Response we are processing.
     * @throws java.lang.Exception
     * @return
     */
    @Override
    @SuppressWarnings("empty-statement")
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        String dni=((AgregarPasoActionForm)form).getDni();
        String idpaso=((AgregarPasoActionForm)form).getIdpaso();
        
        DAO dao=new DAO();
        Hermano h=dao.obtenerHermano(dni);
        boolean capataz=false;
        boolean costalero=false;
        
        if(h.getTipo().equals("capataz")){
            capataz=true;
        }else{
            costalero=true;
        }
        
        RelHermanoPasoId rhp=new RelHermanoPasoId(dni, Integer.parseInt(idpaso));
        RelHermanoPaso hp=new RelHermanoPaso(rhp,capataz,costalero);
        hp.setId(rhp);
        
        //guardar en DAO
        try{
            //dao.Insertar(rhp);
            dao.Insertar(hp);
        }catch(Exception e){ 
            System.out.println("error");
        };
        
        
        request.setAttribute("dni", dni);
        return mapping.findForward(SUCCESS);
    }
}
