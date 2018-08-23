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
        <form:form modelAttribute="serviceprovider" method="post">
            <div>
                <form:label path="name">Name of service provider</form:label>
                <form:input path="name"></form:input>
            </div>
            <div>
                <form:label path="clientsAtTime">Number of clients at one time</form:label>
                <form:input path="clientsAtTime"></form:input>
            </div>
            <div>
                <form:label path="services"> </form:label>
                <br>
                <form:checkboxes path="services" multiple="true" items="${services}" itemLabel="name" itemValue="id"></form:checkboxes>
            </div>
            <label>Working hours (leave empty if free day) Format : 08:00-16:00 </label>
            <div>
                <form:label path="workingHoursMon">Monday</form:label>
                <form:input path="workingHoursMon" type="text" value="08:00-16:00" pattern="\d\d:\d\d-\d\d:\d\d"></form:input>
            </div>
            <div>
                <form:label path="workingHoursTue">Tuesday</form:label>
                <form:input path="workingHoursTue" type="text" value="08:00-16:00" pattern="\d\d:\d\d-\d\d:\d\d"></form:input>
            </div>
            <div>
                <form:label path="workingHoursWed">Wednesday</form:label>
                <form:input path="workingHoursWed" type="text" value="08:00-16:00" pattern="\d\d:\d\d-\d\d:\d\d"></form:input>
            </div>
            <div>
                <form:label path="workingHoursThu">Thursday</form:label>
                <form:input path="workingHoursThu" type="text" value="08:00-16:00" pattern="\d\d:\d\d-\d\d:\d\d"></form:input>
            </div>
            <div>
                <form:label path="workingHoursFri">Friday</form:label>
                <form:input path="workingHoursFri" type="text" value="08:00-16:00" pattern="\d\d:\d\d-\d\d:\d\d"></form:input>
            </div>
            <div>
                <form:label path="workingHoursSat">Saturday</form:label>
                <form:input path="workingHoursSat" type="text" value="08:00-16:00" pattern="\d\d:\d\d-\d\d:\d\d"></form:input>
            </div>
            <div>
                <form:label path="workingHoursSun">Sunday</form:label>
                <form:input path="workingHoursSun" type="text" value="08:00-16:00" pattern="\d\d:\d\d-\d\d:\d\d"></form:input>
            </div>
            <input type="submit">
        </form:form>
    </div>
</div>
<%@ include file="parts/footer.jsp" %>

<script src="<c:url value="/resources/js/addform.js"></c:url>"></script>

</body>
</html>