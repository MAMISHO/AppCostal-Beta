<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<html:html lang="true">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css" rel="stylesheet">
        <link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
        <link href="http://netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.min.css" rel="stylesheet">
        <link href="assets/style.css" rel="stylesheet">
        <title>App Costal</title>
        <html:base/>
    </head>
    <body style="background-color: white">
        
        <div id="page">
            <div id="header"><div class="usuario"><bean:write name="usuario" property="nombre"  /></div>
                <h1 style="font-size: 40px;text-align: center;">Panel de administración</h1></div>
            <div id="content">
                
            </div>
        </div>
        <br />
        <br />
        <br />
        <%--<html:errors></html:errors>
        <html:form action="checkHermandad" method="post">
            <html:submit>Gestionar hermanada</html:submit>
        </html:form>
        --%>
        <div style="margin: 0 auto 0 auto; padding: 20px;background-color: #E0ECF8; width: 300px; border: 2px solid black; border-radius: 8px;">
            <form action="hermandad.do" method="post">
                Hermandades<br/>
                <input type="image" name="enviar" value="Gestionar hermandades" style="width: 150px;height: 150px;" src="https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcThuHwXXUEYHISUeFf7IrLDYJEd7CISMYwvVcVrlZv_T42DyTNVJDt4xw">
            </form>
            <form action="paso.do" method="post">
                Pasos<br/>
                <input type="image" name="enviar" value="Gestionar pasos"style="width: 150px;height: 150px;" src="http://1.bp.blogspot.com/_esUBlqKjDzk/TErlt_7Fu3I/AAAAAAAASKU/IgvoUOXbwUk/s1600/primer+paso.jpg"/>
            </form>
            <form action="hermano.do" method="post">
                Hermanos<br/>
                <input type="image" name="enviar" value="Gestionar hermano" style="width: 150px;height: 150px;" src="https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcThuHwXXUEYHISUeFf7IrLDYJEd7CISMYwvVcVrlZv_T42DyTNVJDt4xw"/>
            </form>
            <form action="iguala.do" method="post">
                Igualas<br/>
                <input type="image" name="enviar" value="Gestionar Igualas" style="width: 150px;height: 150px;" src="http://1.bp.blogspot.com/_edVcsQrgQS4/TTtbDGIzxbI/AAAAAAAAGIc/rL-ACXcplVs/s1600/IGUALA%2BFAVORES%2B%25282%2529.jpg"/>
            </form>
            <form action="recorrido.do" method="post">
                Recorridos<br/>
                <input type="image" name="enviar" value="Gestionar recorrido" style="width: 150px;height: 150px;" src="http://www.conricyt.mx/rsrcs/imgs/conricyt_mapa.jpg"/>
            </form>
        </div>

    </body>
</html:html>
