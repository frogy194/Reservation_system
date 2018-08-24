<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
        <td></td>
        </thead>
        <tr>
            <td>
                <div id="datepicker-2"></div>
            </td>
            <td class="hideme" hidden>
                <table>
                    <%--TODO nie wiem jak, ale pasowaloby ogarnac--%>
                    <c:forEach items="${hoursMondayOnService1}" var="time">
                      <c:choose>
                        <c:when test="${time != 0}">
                        <tr class="hours Monday 1" hidden>
                            <th>${time}:00</th>
                            <th class="clicker"></th>
                        </tr>
                        </c:when>
                          <c:otherwise>Nie pracujemy w podany dzien</c:otherwise>
                      </c:choose>
                    </c:forEach>
                    <c:forEach items="${hoursTuesdayOnService1}" var="time">
                        <c:choose>
                        <c:when test="${time != 0}">
                        <tr class="hours Tuesday 1" hidden>
                            <th>${time}:00</th>
                            <th class="clicker"></th>
                        </tr>
                        </c:when><c:otherwise>Nie pracujemy w podany dzien</c:otherwise>
                        </c:choose>
                    </c:forEach>
                    <c:forEach items="${hoursWednesdayOnService1}" var="time">
                        <c:choose>
                        <c:when test="${time != 0}">
                        <tr class="hours Wednesday 1" hidden>
                            <th>${time}:00</th>
                            <th class="clicker"></th>
                        </tr>
                        </c:when><c:otherwise>Nie pracujemy w podany dzien</c:otherwise>
                        </c:choose>
                    </c:forEach>
                    <c:forEach items="${hoursThursdayOnService1}" var="time">
                        <c:choose>
                        <c:when test="${time != 0}">
                        <tr class="hours Thursday 1" hidden>
                            <th>${time}:00</th>
                            <th class="clicker"></th>
                        </tr>
                        </c:when><c:otherwise>Nie pracujemy w podany dzien</c:otherwise>
                        </c:choose>
                    </c:forEach>
                    <c:forEach items="${hoursFridayOnService1}" var="time"> <c:choose><c:when test="${time != 0}">
                        <tr class="hours Friday 1" hidden>
                            <th>${time}:00</th>
                            <th class="clicker"></th>
                        </tr></c:when><c:otherwise>Nie pracujemy w podany dzien</c:otherwise></c:choose>
                    </c:forEach>
                    <c:forEach items="${hoursSaturdayOnService1}" var="time"> <c:choose><c:when test="${time != 0}">
                        <tr class="hours Saturday 1" hidden>
                            <th>${time}:00</th>
                            <th class="clicker"></th>
                        </tr></c:when><c:otherwise>Nie pracujemy w podany dzien</c:otherwise></c:choose>
                    </c:forEach>
                    <c:forEach items="${hoursSundayOnService1}" var="time"> <c:choose><c:when test="${time != 0}">
                        <tr class="hours Sunday 1" hidden>
                            <th>${time}:00</th>
                            <th class="clicker"></th>
                        </tr></c:when><c:otherwise>Nie pracujemy w podany dzien</c:otherwise></c:choose>
                    </c:forEach>


                        <c:forEach items="${hoursMondayOnService2}" var="time"> <c:choose><c:when test="${time != 0}">
                            <tr class="hours Monday 2" hidden>
                                <th>${time}:00</th>
                                <th class="clicker"></th>
                            </tr></c:when><c:otherwise>Nie pracujemy w podany dzien</c:otherwise></c:choose>
                        </c:forEach>
                        <c:forEach items="${hoursTuesdayOnService2}" var="time"> <c:choose><c:when test="${time != 0}">
                            <tr class="hours Tuesday 2" hidden>
                                <th>${time}:00</th>
                                <th class="clicker"></th>
                            </tr></c:when><c:otherwise>Nie pracujemy w podany dzien</c:otherwise></c:choose>
                        </c:forEach>
                        <c:forEach items="${hoursWednesdayOnService2}" var="time"> <c:choose><c:when test="${time != 0}">
                            <tr class="hours Wednesday 2" hidden>
                                <th>${time}:00</th>
                                <th class="clicker"></th>
                            </tr></c:when><c:otherwise>Nie pracujemy w podany dzien</c:otherwise></c:choose>
                        </c:forEach>
                        <c:forEach items="${hoursThursdayOnService2}" var="time"> <c:choose><c:when test="${time != 0}">
                            <tr class="hours Thursday 2" hidden>
                                <th>${time}:00</th>
                                <th class="clicker"></th>
                            </tr></c:when><c:otherwise>Nie pracujemy w podany dzien</c:otherwise></c:choose>
                        </c:forEach>
                        <c:forEach items="${hoursFridayOnService2}" var="time"> <c:choose><c:when test="${time != 0}">
                            <tr class="hours Friday 2" hidden>
                                <th>${time}:00</th>
                                <th class="clicker"></th>
                            </tr></c:when><c:otherwise>Nie pracujemy w podany dzien</c:otherwise></c:choose>
                        </c:forEach>
                        <c:forEach items="${hoursSaturdayOnService2}" var="time"> <c:choose><c:when test="${time != 0}">
                            <tr class="hours Saturday 2" hidden>
                                <th>${time}:00</th>
                                <th class="clicker"></th>
                            </tr></c:when><c:otherwise>Nie pracujemy w podany dzien</c:otherwise></c:choose>
                        </c:forEach>
                        <c:forEach items="${hoursSundayOnService2}" var="time"> <c:choose><c:when test="${time != 0}">
                            <tr class="hours Sunday 2" hidden>
                                <th>${time}:00</th>
                                <th class="clicker"></th>
                            </tr></c:when><c:otherwise>Nie pracujemy w podany dzien</c:otherwise></c:choose>
                        </c:forEach>




                        <c:forEach items="${hoursMondayOnService3}" var="time"> <c:choose><c:when test="${time != 0}">
                            <tr class="hours Monday 3" hidden>
                                <th>${time}:00</th>
                                <th class="clicker"></th>
                            </tr></c:when><c:otherwise>Nie pracujemy w podany dzien</c:otherwise></c:choose>
                        </c:forEach>
                        <c:forEach items="${hoursTuesdayOnService3}" var="time"> <c:choose><c:when test="${time != 0}">
                            <tr class="hours Tuesday 3" hidden>
                                <th>${time}:00</th>
                                <th class="clicker"></th>
                            </tr></c:when><c:otherwise>Nie pracujemy w podany dzien</c:otherwise></c:choose>
                        </c:forEach>
                        <c:forEach items="${hoursWednesdayOnService3}" var="time"> <c:choose><c:when test="${time != 0}">
                            <tr class="hours Wednesday 3" hidden>
                                <th>${time}:00</th>
                                <th class="clicker"></th>
                            </tr></c:when><c:otherwise>Nie pracujemy w podany dzien</c:otherwise></c:choose>
                        </c:forEach>
                        <c:forEach items="${hoursThursdayOnService3}" var="time"> <c:choose><c:when test="${time != 0}">
                            <tr class="hours Thursday 3" hidden>
                                <th>${time}:00</th>
                                <th class="clicker"></th>
                            </tr></c:when><c:otherwise>Nie pracujemy w podany dzien</c:otherwise></c:choose>
                        </c:forEach>
                        <c:forEach items="${hoursFridayOnService3}" var="time"> <c:choose><c:when test="${time != 0}">
                            <tr class="hours Friday 3" hidden>
                                <th>${time}:00</th>
                                <th class="clicker"></th>
                            </tr></c:when><c:otherwise>Nie pracujemy w podany dzien</c:otherwise></c:choose>
                        </c:forEach>
                        <c:forEach items="${hoursSaturdayOnService3}" var="time"> <c:choose><c:when test="${time != 0}">
                            <tr class="hours Saturday 3" hidden>
                                <th>${time}:00</th>
                                <th class="clicker"></th>
                            </tr></c:when><c:otherwise>Nie pracujemy w podany dzien</c:otherwise></c:choose>
                        </c:forEach>
                        <c:forEach items="${hoursSundayOnService3}" var="time"> <c:choose><c:when test="${time != 0}">
                            <tr class="hours Sunday 3" hidden>
                                <th>${time}:00</th>
                                <th class="clicker"></th>
                            </tr></c:when><c:otherwise>Nie pracujemy w podany dzien</c:otherwise></c:choose>
                        </c:forEach>


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
                </form>

            </td>
        </tr>
    </table>

</div>
<%@ include file="parts/footer.jsp" %>


<script src="<c:url value="/resources/js/calendar.js"></c:url>"></script>
</body>
</html>





















