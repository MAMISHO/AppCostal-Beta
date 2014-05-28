
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<!DOCTYPE html>
<%--<jsp:useBean id="hermanos" scope="request" type="List<Hermano>" />--%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Asignar- Paso</title>
        <link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css" rel="stylesheet">
        <link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
        <link href="http://netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.min.css" rel="stylesheet">
        <link href="assets/style.css" rel="stylesheet">
    </head>
    <body>
        <div id="page">
            <div id="header"><div class="usuario"><bean:write name="usuario" property="nombre"  /></div>
                <h1 style="font-size: 40px;text-align: center;">Asignar Pasos</h1></div>
            <div id="content">

            </div>
        </div>

        <%
            String relativeWebPath = "assets/usuario.png";
            String absoluteDiskPath = getServletContext().getRealPath(relativeWebPath);
        %>

        <div class="contenedor-usuario">
            <div class="caja-usuario">
                <%--<img src="<%=absoluteDiskPath%>"/>--%>
                <img src="https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcThuHwXXUEYHISUeFf7IrLDYJEd7CISMYwvVcVrlZv_T42DyTNVJDt4xw" style="float: left;"/>

                DNI: <label><bean:write name="hermano" property="dni" /></label><br />
                Nombre: <label><bean:write name="hermano" property="nombre" /></label><br />
                Apellido :<label><bean:write name="hermano" property="apellido1" /></label><br />
            </div>
            <html:form action="agregarPaso">
                <html:select property="idpaso">
                    <html:options property="idpaso"  collection="listaPasos" labelProperty="nombre"/>
                </html:select>
                <html:hidden property="dni" name="hermano" />
                <input type="submit" name="Agregar" value="Agregar Paso">
            </html:form>
        </div>


         <logic:notEmpty name="pasosHermano" scope="request">
                <center>
                    <h1>Mis pasos</h1>
                    <table border=1 cellspacing=2 cellpadding=2 width="60%" bgcolor="#FFFFFF">
                        <tr>
                            <td><b>Nº</b></td>
                            <td><b>ID</b></td>
                            <td><b>Hermandad</b></td>
                            <td><b>Nombre</b></td>
                            <td><b>Tipo</b></td>
                        </tr>
                        <logic:iterate name="pasosHermano" id="p" indexId="cont">
                            <tr>
                                <td><bean:write name="cont" /></td>
                                <td><bean:write name="p" property="idpaso" /> </td>
                                <td><bean:write name="p" property="hermandad.idhermandad" /> </td>
                                <td><bean:write name="p" property="nombre" /> </td>
                                <td><bean:write name="p" property="tipo" /> </td>
                            </tr>
                        </logic:iterate>
                    </table>
                </center>    
            </logic:notEmpty>

    </body>
</html>
