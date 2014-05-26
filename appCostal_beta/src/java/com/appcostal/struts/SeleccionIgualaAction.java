/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.appcostal.struts;

import appcostal.model.DAO;
import appcostal.model.Iguala;
import appcostal.model.Paso;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author Jesus
 */
public class SeleccionIgualaAction extends org.apache.struts.action.Action {

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
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        
           DAO dao=new DAO();
        String idiguala=((SeleccionIgualaActionForm)form).getIdiguala();
        //Paso paso=((SeleccionIgualaActionForm)form).
        Iguala iguala=dao.obtenerIguala(idiguala);
        
        //Paso p=dao.obtenerPaso(iguala.getPaso().getIdpaso().toString());
        //Integer i=p.getIdpaso();
        //String nombre=p.getNombre();
        //iguala.setPaso(p);
        request.setAttribute("iguala", iguala);
        return mapping.findForward(SUCCESS);
    }
}
