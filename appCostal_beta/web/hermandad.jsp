
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<!DOCTYPE html>
<%--<jsp:useBean id="hermanos" scope="request" type="List<Hermano>" />--%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css" rel="stylesheet">
        <link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
        <link href="http://netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.min.css" rel="stylesheet">
        <link href="assets/style.css" rel="stylesheet">
        <title>G-Hermandad</title>
    </head>
    <body>

        <div id="page">
            <div id="header"><h1 style="font-size: 40px;text-align: center;">Gestión de Hermandades</h1></div>
            <div id="content">

            </div>
        </div>
        <br />
        <br />
        <br />
        <%--
            for(int i=0;i<hermanos.size();i++){
                out.write(hermanos.get(i).getNombre());
            }
        --%>
        <logic:notEmpty name="hermandades" scope="request">
        <center>
            <table border=1 cellspacing=2 cellpadding=2 width="70%" bgcolor="#FFFFFF">
                <tr>
                    
                    <td style="width:  82px;min-width: 82px;"><b>Opción</b></td>
                    <td><b>Nº</b></td>
                    <td><b>ID</b></td>
                    <td><b>Nombre</b></td>
                    <td><b>Sede</b></td>

                </tr>
                <logic:iterate name="hermandades" id="h" indexId="cont">
                    <tr>
                        
                        <td>
                            <html:form action="seleccionHermandad" method="post">
                                <html:hidden property="idhermandad" name="h"></html:hidden>
                                <span class="box"><html:submit styleClass="fa fa-pencil-square-o btn btn-default" value="&#xf044"></html:submit></span>
                            </html:form>
                            <html:form action="eliminarHermandad" method="post">
                                <html:hidden property="idhermandad" name="h"></html:hidden>
                                <span class="box"> <html:submit styleClass="fa fa-trash-o btn btn-default" value="&#xf014"></html:submit></span>
                            </html:form>
                        </td>
                        <td><bean:write name="cont" /></td>
                        <td><bean:write name="h" property="idhermandad" /> </td>
                        <td><bean:write name="h" property="nombre" /> </td>
                        <td><bean:write name="h" property="sede" /> </td>

                    </tr>
                </logic:iterate>
            </table>
        </center>    
    </logic:notEmpty>

    <div style="margin: 0 auto 0 auto; padding: 20px;background-color: #E0ECF8; width: 300px; border: 2px solid black; border-radius: 8px;">
        <html:errors></html:errors>
        <html:form action="checkHermandad" style="margin-top:2%;">
            <fieldset> <legend align="left">Datos</legend>
                ID:<html:text property="idhermandad"></html:text><br />
                Hermandad<html:text property="nombre"></html:text><br />
                Nombre:<html:text property="sede"></html:text><br />

                <html:hidden property="accion" styleId="accion" value="crear"></html:hidden>
                <html:submit styleClass="fa fa-plus-square btn btn-default" value="&#xf0fe Crear"></html:submit>
                </fieldset>
        </html:form>
    </div>
</body>
</html>
