<%-- 
    Document   : userPage
    Created on : 7 janv. 2012, 18:23:16
    Author     : Marjorie
--%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://myfaces.apache.org/tomahawk" prefix="x"%>
<%@ taglib uri="http://sourceforge.net/projects/jsf-comp" prefix="c" %>

<f:loadBundle basename="message" var="message"/>

<f:view locale="#{LangApp.locale}" >

<html>
    <head>           
        <title>User : Perso</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">     
        <link href="../includes/css/Common.css" rel="stylesheet" type="text/css" />    
    </head>    
    <body>
        
        <jsp:include page="/template/header.jsp" />
        
        <x:div styleClass="content" rendered="#{userBean.userConnect}" >
            <jsp:include page="./userInfo.jsp" />
        </x:div>       

        <x:div styleClass="content" rendered="#{!userBean.userConnect}" >
            <h:form id="errAuthUserPage">
                <x:outputText value="#{message.authen}" />
            </h:form>
            <jsp:include page="/membre/inscriptionForm.jsp" />
        </x:div>       
        
        <jsp:include page="/template/footer.jsp" />
            
    </body>
</html>

</f:view>