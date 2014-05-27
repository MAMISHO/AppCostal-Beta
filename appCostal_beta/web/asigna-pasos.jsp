
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

        <div style="margin-top: 4%; border: 2px solid gray;">
            <div style="border: 2px solid blue; width: 300px; height: 100px;">
                <%--<img src="<%=absoluteDiskPath%>"/>--%>
                <img src="https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcThuHwXXUEYHISUeFf7IrLDYJEd7CISMYwvVcVrlZv_T42DyTNVJDt4xw" style="float: left;"/>

                DNI: <label><bean:write name="hermano" property="dni" /></label><br />
                Nombre: <label><bean:write name="hermano" property="nombre" /></label><br />
                Apellido :<label><bean:write name="hermano" property="apellido1" /></label><br />
            </div>
            <html:form>
                <html:select property="idpaso">
                    <logic:iterate collection="listaPasos" id="p" >
                        <html:option value='<bean:write name="p" property="nombre"></bean:write>'><bean:write name="p" property="nombre"></bean:write></html:option>
                    </logic:iterate>
                    
                </html:select>
                <input type="submit" name="Agregar" value="Agregar Paso">
            </html:form>
        </div>
        <br />
        <br />
        <br />

    </body>
</html>
