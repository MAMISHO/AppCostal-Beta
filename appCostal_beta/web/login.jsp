<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

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
            <div id="header"><h1 style="font-size: 40px;text-align: center;">App Costal</h1></div>
            <div id="content">
                
            </div>
            <br /> 
            <br /> 
            <br /> 
            <br /> 
        <div style="margin: 0 auto 0 auto; padding: 20px;background-color: #E0ECF8; width: 300px; border: 2px solid black; border-radius: 8px;">
             <h2>Login</h2>
        <html:errors></html:errors>
        <html:form action="checkLogin" method="post">
            Nombre: <html:text property="email" ></html:text><br />
            clave: <html:password property="clave"></html:password><br />
            <html:submit styleClass="fa fa-caret-square-o-right btn btn-default" value="&#xf152 Entrar"></html:submit>
        </html:form>
       </div>
    </body>
</html>
