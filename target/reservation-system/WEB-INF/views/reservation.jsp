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
    <link href="<c:url value="/resources/css/jquery-ui.css"></c:url>"
          rel="stylesheet">
    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
    <link href="<c:url value="/resources/css/basic.css" />" rel="stylesheet">
    <%@ include file="parts/meta.jsp" %>
    <title>Home Page</title>
    <div class="header-panel">
        <ul>
            <li><a class="myButton">Home</a></li>
            <li><a class="myButton">Services</a></li>
            <li><a class="myButton">Reservation</a></li>
            <li><a class="myButton">Contact</a></li>
            <li><a class="myButton">Admin panel</a></li>
        </ul>

    </div>
    <script>
        $(function () {
            $("#datepicker-2").datepicker();
        });
    </script>

</head>
<body>
<div class="view">

    <table>
        <thead>
        <td>Calendar</td>
        <td class="inputhere"></td>
        <td><c:forEach items="${nice}" var="xd"><c:out value="${xd}"></c:out> </c:forEach> </td>
        </thead>
        <tr>
            <td>
                <div id="datepicker-2"></div>
            </td>
            <td class="hideme" hidden>
                <table>
                    <tr>
                        <th>7:00</th>
                        <th class="clicker"></th>
                    </tr>
                    <tr>
                        <th>8:00</th>
                        <th class="clicker"></th>
                    </tr>
                    <tr>
                        <th>9:00</th>
                        <th class="clicker"></th>
                    </tr>
                    <tr>
                        <th>10:00</th>
                        <th class="clicker"></th>
                    </tr>
                    <tr>
                        <th>11:00</th>
                        <th class="clicker"></th>
                    </tr>
                    <tr>
                        <th>12:00</th>
                        <th class="clicker"></th>
                    </tr>
                    <tr>
                        <th>13:00</th>
                        <th class="clicker"></th>
                    </tr>
                    <tr>
                        <th>14:00</th>
                        <th class="clicker"></th>
                    </tr>
                    <tr>
                        <th>15:00</th>
                        <th class="clicker"></th>
                    </tr>
                    <tr>
                        <th>16:00</th>
                        <th class="clicker"></th>
                    </tr>
                    <tr>
                        <th>17:00</th>
                        <th class="clicker"></th>
                    </tr>
                    <tr>
                        <th>18:00</th>
                        <th class="clicker"></th>
                    </tr>
                    <tr>
                        <th>19:00</th>
                        <th class="clicker"></th>
                    </tr>


                </table>
            </td>
            <td class="hideme" hidden>
                <form class="formreserv" method="post">
                    <label>Choose your service :</label>
                    <br>
                    <select name="selectedserv" id="selector">
                        <c:forEach items="${services}" var="service">
                            <option value="${service.id}">${service.name}</option>
                        </c:forEach>

                    </select>
                    <br>
                    <input class="dontsend" type="submit">

            </td>
        </tr>
    </table>

</div>
<%@ include file="parts/footer.jsp" %>


<script src="<c:url value="/resources/js/calendar.js"></c:url>"></script>
</body>
</html>