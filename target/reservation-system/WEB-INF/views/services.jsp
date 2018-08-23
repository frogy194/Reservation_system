<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Created by IntelliJ IDEA.
  User: frogy
  Date: 16.08.18
  Time: 18:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

    <%@ include file="parts/meta.jsp" %>
    <title>Home Page</title>
    <%@ include file="parts/header.jsp" %>
</head>
<body>
<div class="view">
    <div class="pages">
        Available services :
        <div class="serv">
            <c:forEach var="service" items="${allservices}">
                <div class="serivcetoclick" name="${service.id}"><p class="servicename">${service.name}</p>
                    <div><p class="servicedesc">${service.description}</p>
                        <br>Duration of service : ${service.duration} minutes.
                    </div>
                    <div style="alignment: right">Price : ${service.price} $</div>
                    <br>
                </div>
            </c:forEach>
        </div>
    </div>
</div>
<%@ include file="parts/footer.jsp" %>
</body>
</html>