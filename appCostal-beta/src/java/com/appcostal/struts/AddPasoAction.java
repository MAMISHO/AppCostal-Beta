/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.appcostal.struts;

import appcostal.model.DAO;
import appcostal.model.Hermano;
import appcostal.model.Paso;
import appcostal.model.RelHermanoPasoId;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author MAMISHO
 */
public class AddPasoAction extends org.apache.struts.action.Action {

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

        String dni =((AddPasoActionForm)form).getDni();
        //String nombre=((AddPasoActionForm)form).getNombre();
        //String apellido1=((AddPasoActionForm)form).getApellido1();
        //String apellido2=((AddPasoActionForm)form).getApellido2();
        
        DAO dao=new DAO();
        List<RelHermanoPasoId> pasos_hermano=dao.pasosDeHermano(dni);
        List<Paso> pasos=new ArrayList();
        Iterator<RelHermanoPasoId> it=pasos_hermano.iterator();
        while(it.hasNext()){
            Integer idPaso=it.next().getIdpaso();
            Paso paso=dao.obtenerPaso(idPaso.toString());
            if(paso!=null){
                pasos.add(paso);
            }
        }
        List<Paso> pasosDisponibles=pasosDisponibles=dao.pasosDisponibles();
        Hermano hermano=dao.obtenerHermano(dni);
        pasosDisponibles.removeAll(pasos);
        request.setAttribute("listaPasos", pasosDisponibles);
        request.setAttribute("hermano", hermano);
        request.setAttribute("pasosHermano", pasos);
        
        return mapping.findForward(SUCCESS);
    }
}
