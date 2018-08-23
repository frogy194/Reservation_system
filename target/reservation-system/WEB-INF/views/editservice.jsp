<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
        <form:form modelAttribute="service">

        <div>
            <form:label path="name">Name of service</form:label>
            <form:input path="name"></form:input>
        </div>

        <div>
            <form:label path="description">Description</form:label>
            <form:textarea path="description"></form:textarea>
        </div>

        <div>
            <form:label path="duration">Duration (in minutes)</form:label>
            <form:input path="duration" type="number" min="0" maxlength="600"></form:input>
        </div>

        <div>
            <form:label path="price">Price</form:label>
            <form:input path="price" type="number"></form:input>
        </div>

            <input type="submit">
        </form:form>
    </div>
</div>
<%@ include file="parts/footer.jsp" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.3.8/angular.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.9.0/moment.min.js'></script>

</body>
</html>