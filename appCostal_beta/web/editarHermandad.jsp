<%@page import="appcostal.model.Hermandad"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<jsp:useBean id="hermandad" scope="request" type="Hermandad" />
<!DOCTYPE html>
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
            <div id="header"><h1 style="font-size: 40px;text-align: center;">Editar Hermandad</h1></div>
            <div id="content">
                
            </div>
            <br /> 
            <br /> 
            <br /> 
            <br /> 
        <%
            String idhermandad=Integer.toString(hermandad.getIdhermandad());
            //String idhermandad=Integer.toString(paso.getHermandad().getIdhermandad());
            
        %>
        <div style="margin: 0 auto 0 auto; padding: 20px;background-color: #E0ECF8; width: 300px; border: 2px solid black; border-radius: 8px;">
        <html:errors></html:errors>
        <html:form action="checkHermandad" style="margin-top:2%;">
            <fieldset> <legend align="left">Datos</legend>
                ID:<html:text property="idhermandad" value="<%=idhermandad%>"></html:text><br />
                Nombre:<html:text property="nombre" value="<%=hermandad.getNombre()%>"></html:text><br />
                Sede:<html:text property="sede" value="<%=hermandad.getSede()%>"></html:text><br />
                
                <html:hidden property="accion" styleId="accion" value="editar"></html:hidden>
                <html:submit styleClass="fa fa-floppy-o btn btn-default" value="&#xf0c7 Guardar"></html:submit>
                </fieldset>
        </html:form>
        </div>
         </div>
    </body>
</html>