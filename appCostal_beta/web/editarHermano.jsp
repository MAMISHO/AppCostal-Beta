<%@page import="appcostal.model.Hermano"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<jsp:useBean id="hermano" scope="request" type="Hermano" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css" rel="stylesheet">
        <link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
        <link href="http://netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.min.css" rel="stylesheet">
        <link href="assets/style.css" rel="stylesheet">
        <title>JSP Page</title>
    </head>
    <body>
        <div id="page">
            <div id="header"><h1 style="font-size: 40px;text-align: center;">Editar Hermano</h1></div>
            <div id="content">
                
            </div>
        </div>
        <br />
        <br />
        <br />
        
        <%
            java.util.Date date = hermano.getFechanacimiento();
            java.text.SimpleDateFormat fechanacimiento = new java.text.SimpleDateFormat("dd-MM-yyyy");
            String fecha = fechanacimiento.format(date);
        %>
        <div style="margin: 0 auto 0 auto; padding: 20px;background-color: #E0ECF8; width: 300px; border: 2px solid black; border-radius: 8px;">
        <html:errors></html:errors>
        <html:form action="checkHermano" style="margin-top:2%;">
            <fieldset> <legend align="left">Datos</legend>
                DNI:<html:text property="dni" value="<%=hermano.getDni()%>"></html:text><br />
                Nombre:<html:text property="nombre" value="<%=hermano.getNombre()%>"></html:text><br />
                Primer apellido:<html:text property="apellido1" value="<%=hermano.getApellido1()%>"></html:text><br />
                Segundo apellido:<html:text property="apellido2" value="<%=hermano.getApellido2()%>"></html:text><br />
                Dirección:<html:text property="direccion" value="<%=hermano.getDireccion()%>"></html:text><br />
                Localidad:<html:text property="localidad" value="<%=hermano.getLocalidad()%>"></html:text><br />
                Provincia:<html:text property="provincia" value="<%=hermano.getProvincia()%>"></html:text><br />
                Tlf fijo:<html:text property="telefonofijo" value="<%=hermano.getTelefonofijo()%>"></html:text><br />
                Tlf móvil:<html:text property="telefonomovil" value="<%=hermano.getTelefonomovil()%>"></html:text><br />
                Fecha de nacimiento:<html:text property="fechanacimiento" value="<%=fecha%>"></html:text><br />
                E-mail:<html:text property="email" value="<%=hermano.getEmail()%>"></html:text><br />
                Contraseña:<html:text property="clave" value="<%=hermano.getClave()%>"></html:text><br />
                Repetir contraseña:<html:text property="reclave" value="<%=hermano.getClave()%>"></html:text><br />
                <html:hidden property="accion" styleId="accion" value="editar"></html:hidden>
                <html:submit styleClass="fa fa-floppy-o btn btn-default" value="&#xf0c7 Guardar"></html:submit>
                </fieldset>
        </html:form>
        </div>
    </body>
</html>
