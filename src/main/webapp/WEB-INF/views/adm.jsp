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
        <ul>
            <li><a class="myButton centerman" href="/adm/addservice">Add service</a></li>
            <br>
            <li><a class="myButton centerman" href="/adm/editservice/1" style="pointer-events: none">Edit service</a></li>
            <br>
            <li><a class="myButton centerman" href="/adm/addserviceprovider">Add service provider</a> </li>
            <br>
            <li><a class="myButton centerman" href="/adm/editserviceprovider/1" style="pointer-events: none">Edit service provider</a></li>

        </ul>
    </div>
</div>
<%@ include file="parts/footer.jsp" %>
</body>
</html>