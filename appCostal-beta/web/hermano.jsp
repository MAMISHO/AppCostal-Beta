<%@page import="java.util.List"%>
<%@page import="appcostal.model.Hermano"%>
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
        <title>G-Hermano</title>
        <link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css" rel="stylesheet">
        <link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
        <link href="http://netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.min.css" rel="stylesheet">
        <link href="assets/style.css" rel="stylesheet">
    </head>
    <body>
        <div id="page">
            <div id="header"><div class="usuario"><bean:write name="usuario" property="nombre"  /></div>
                <h1 style="font-size: 40px;text-align: center;">Gestión de Hermanos</h1></div>
            <div id="content">
                
            </div>
        </div>
        
        <%--
            for(int i=0;i<hermanos.size();i++){
                out.write(hermanos.get(i).getNombre());
            }
        --%>
        <br />
        <br />
        <br />
        <logic:notEmpty name="hermanos" scope="request">
        <center>
            <table border=1 cellspacing=2 cellpadding=2 width="70%" bgcolor="#FFFFFF">
                <tr>
                    <td style="width:  82px;min-width: 82px;"><b>Opción</b></td>
                    <td><b>Nº</b></td>
                    <td><b>DNI</b></td>
                    <td><b>Nombre</b></td>
                    <td><b>Apellido</b></td>
                    <td><b>Dirección</b></td>
                    <td><b>Localidad</b></td>
                    <td><b>Provincia</b></td>
                    <td><b>Fijo</b></td>
                    <td><b>Móvil</b></td>
                    <td><b>Nacimiento</b></td>
                    <td><b>E-mail</b></td>
                    <td>Pasos</td>
                </tr>
                <logic:iterate name="hermanos" id="h" indexId="cont">
                    <tr>
                        
                        <td>
                            
                            <html:form action="seleccionHermano" method="post">
                                <html:hidden property="dni" name="h"></html:hidden>
                                <span class="box"><html:submit styleClass="fa fa-pencil-square-o btn btn-default" value="&#xf044"></html:submit></span>
                            </html:form>
                            <html:form action="eliminarHermano" method="post">
                                <html:hidden property="dni" name="h"></html:hidden>
                               <span class="box"> <html:submit styleClass="fa fa-trash-o btn btn-default" value="&#xf014"></html:submit></span>
                            </html:form>
                        </td>
                        
                        <td><bean:write name="cont" /></td>
                        <html:form action="addPaso">
                        <td><bean:write name="h" property="dni" /> </td>
                        <td><bean:write name="h" property="nombre" /> </td>
                        <td><bean:write name="h" property="apellido1" /> <bean:write name="h" property="apellido2" />  </td>
                        <td><bean:write name="h" property="direccion" /> </td>
                        <td><bean:write name="h" property="localidad" /> </td>
                        <td><bean:write name="h" property="provincia" /> </td>
                        <td><bean:write name="h" property="telefonofijo" /> </td>
                        <td><bean:write name="h" property="telefonomovil" /> </td>
                        <td><bean:write name="h" property="fechanacimiento" format="dd-MM-yyyy"/> </td>
                        <td><bean:write name="h" property="email" /> </td>
                        <html:hidden property="dni" name="h" />
                        <td><html:submit styleClass="fa fa-plus-square btn btn-default" value="&#xf0fe Pasos"></html:submit></td>
                        </html:form>
                    </tr>
                </logic:iterate>
            </table>
        </center>    
    </logic:notEmpty>
    <br />
    <div style="margin: 0 auto 0 auto; padding: 20px;background-color: #E0ECF8; width: 600px; border: 2px solid black; border-radius: 8px;">
    <html:errors></html:errors>
    <html:form action="checkHermano" style="margin-top:2%;">
        <fieldset> <legend align="left">Datos</legend>
            DNI:<html:text property="dni"></html:text>
            Nombre:<html:text property="nombre"></html:text><br />
            <br />
            Primer apellido:<html:text property="apellido1"></html:text>
            Segundo apellido:<html:text property="apellido2"></html:text><br />
            <br />
            Dirección:<html:text property="direccion"></html:text>
            Localidad:<html:text property="localidad"></html:text><br />
            <br />
            Provincia:<html:text property="provincia"></html:text><br />
            <br />
            Tlf fijo:<html:text property="telefonofijo"></html:text>
            Tlf móvil:<html:text property="telefonomovil"></html:text><br />
            <br />
            Fecha de nacimiento:<html:text property="fechanacimiento"></html:text>
            E-mail:<html:text property="email"></html:text><br />
            <br />
            Contraseña:<html:text property="clave"></html:text>
            Repetir Contraseña:<html:text property="reclave"></html:text><br />
            Tipo<html:select property="tipo">
                <html:option value="costalero">Costalero</html:option>
                <html:option value="capataz">Capataz</html:option>
            </html:select>
            <html:hidden property="accion" styleId="accion" value="crear"></html:hidden>
            <html:submit styleClass="fa fa-plus-square btn btn-default" value="&#xf0fe Crear"></html:submit>
            </fieldset>
    </html:form>
    </div>
</body>
</html>
