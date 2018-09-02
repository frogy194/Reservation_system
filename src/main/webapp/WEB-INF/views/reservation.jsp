<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: frogy
  Date: 31.08.18
  Time: 15:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html lang="pl">
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Reservations</title>


    <%@ include file="parts/header.jsp" %>
</head>
<body>



<table>
    <thead>
    <td>Calendar</td>
    <td class="inputhere"></td>
    <td></td>
    </thead>
    <tr>
        <td>
            <div style="overflow:hidden; width: 900px;">
                <div class="form-group">
                    <div class="row">
                        <div class="col-md-8">
                            <div id="datetimepicker12"></div>
                        </div>
                    </div>
                </div>
                <script type="text/javascript">
                    $(function () {
                        $('#datetimepicker12').datetimepicker({
                            inline: true,
                            sideBySide: true
                        });
                    });
                </script>
            </div>

        </td>
        <td class="hideme" hidden>
            <table>
                <%--TODO nie wiem jak, ale pasowaloby ogarnac--%>
                <c:forEach items="${hoursMondayOnService1}" var="time">
                    <c:choose>
                        <c:when test="${time != 0}">
                            <%--<c:forEach items="${orders}" var="order">--%>
                            <%--<c:choose>--%>
                            <%--<c:when test="${order.date == time">--%>
                            <%--siema--%>
                            <%--</c:when>--%>
                            <%--</c:choose>--%>
                            <%--</c:forEach>--%>
                            <tr class="hours Monday 1" hidden>
                                <th>${time}:00</th>
                                <th class="clicker"></th>
                            </tr>
                        </c:when>
                    </c:choose>
                </c:forEach>
                <c:forEach items="${hoursTuesdayOnService1}" var="time">
                    <c:choose>
                        <c:when test="${time != 0}">
                            <tr class="hours Tuesday 1" hidden>
                                <th>${time}:00</th>
                                <th class="clicker"></th>
                            </tr>
                        </c:when>
                    </c:choose>
                </c:forEach>
                <c:forEach items="${hoursWednesdayOnService1}" var="time">
                    <c:choose>
                        <c:when test="${time != 0}">
                            <tr class="hours Wednesday 1" hidden>
                                <th>${time}:00</th>
                                <th class="clicker"></th>
                            </tr>
                        </c:when>
                    </c:choose>
                </c:forEach>
                <c:forEach items="${hoursThursdayOnService1}" var="time">
                    <c:choose>
                        <c:when test="${time != 0}">
                            <tr class="hours Thursday 1" hidden>
                                <th>${time}:00</th>
                                <th class="clicker"></th>
                            </tr>
                        </c:when>
                    </c:choose>
                </c:forEach>
                <c:forEach items="${hoursFridayOnService1}" var="time"> <c:choose><c:when test="${time != 0}">
                    <tr class="hours Friday 1" hidden>
                        <th>${time}:00</th>
                        <th class="clicker"></th>
                    </tr></c:when></c:choose>
                </c:forEach>
                <c:forEach items="${hoursSaturdayOnService1}" var="time"> <c:choose><c:when test="${time != 0}">
                    <tr class="hours Saturday 1" hidden>
                        <th>${time}:00</th>
                        <th class="clicker"></th>
                    </tr></c:when></c:choose>
                </c:forEach>
                <c:forEach items="${hoursSundayOnService1}" var="time"> <c:choose><c:when test="${time != 0}">
                    <tr class="hours Sunday 1" hidden>
                        <th>${time}:00</th>
                        <th class="clicker"></th>
                    </tr></c:when></c:choose>
                </c:forEach>


                <c:forEach items="${hoursMondayOnService2}" var="time"> <c:choose><c:when test="${time != 0}">
                    <tr class="hours Monday 2" hidden>
                        <th>${time}:00</th>
                        <th class="clicker"></th>
                    </tr></c:when></c:choose>
                </c:forEach>
                <c:forEach items="${hoursTuesdayOnService2}" var="time"> <c:choose><c:when test="${time != 0}">
                    <tr class="hours Tuesday 2" hidden>
                        <th>${time}:00</th>
                        <th class="clicker"></th>
                    </tr></c:when></c:choose>
                </c:forEach>
                <c:forEach items="${hoursWednesdayOnService2}" var="time"> <c:choose><c:when test="${time != 0}">
                    <tr class="hours Wednesday 2" hidden>
                        <th>${time}:00</th>
                        <th class="clicker"></th>
                    </tr></c:when></c:choose>
                </c:forEach>
                <c:forEach items="${hoursThursdayOnService2}" var="time"> <c:choose><c:when test="${time != 0}">
                    <tr class="hours Thursday 2" hidden>
                        <th>${time}:00</th>
                        <th class="clicker"></th>
                    </tr></c:when></c:choose>
                </c:forEach>
                <c:forEach items="${hoursFridayOnService2}" var="time"> <c:choose><c:when test="${time != 0}">
                    <tr class="hours Friday 2" hidden>
                        <th>${time}:00</th>
                        <th class="clicker"></th>
                    </tr></c:when></c:choose>
                </c:forEach>
                <c:forEach items="${hoursSaturdayOnService2}" var="time"> <c:choose><c:when test="${time != 0}">
                    <tr class="hours Saturday 2" hidden>
                        <th>${time}:00</th>
                        <th class="clicker"></th>
                    </tr></c:when></c:choose>
                </c:forEach>
                <c:forEach items="${hoursSundayOnService2}" var="time"> <c:choose><c:when test="${time != 0}">
                    <tr class="hours Sunday 2" hidden>
                        <th>${time}:00</th>
                        <th class="clicker"></th>
                    </tr></c:when></c:choose>
                </c:forEach>




                <c:forEach items="${hoursMondayOnService3}" var="time"> <c:choose><c:when test="${time != 0}">
                    <tr class="hours Monday 3" hidden>
                        <th>${time}:00</th>
                        <th class="clicker"></th>
                    </tr></c:when></c:choose>
                </c:forEach>
                <c:forEach items="${hoursTuesdayOnService3}" var="time"> <c:choose><c:when test="${time != 0}">
                    <tr class="hours Tuesday 3" hidden>
                        <th>${time}:00</th>
                        <th class="clicker"></th>
                    </tr></c:when></c:choose>
                </c:forEach>
                <c:forEach items="${hoursWednesdayOnService3}" var="time"> <c:choose><c:when test="${time != 0}">
                    <tr class="hours Wednesday 3" hidden>
                        <th>${time}:00</th>
                        <th class="clicker"></th>
                    </tr></c:when></c:choose>
                </c:forEach>
                <c:forEach items="${hoursThursdayOnService3}" var="time"> <c:choose><c:when test="${time != 0}">
                    <tr class="hours Thursday 3" hidden>
                        <th>${time}:00</th>
                        <th class="clicker"></th>
                    </tr></c:when></c:choose>
                </c:forEach>
                <c:forEach items="${hoursFridayOnService3}" var="time"> <c:choose><c:when test="${time != 0}">
                    <tr class="hours Friday 3" hidden>
                        <th>${time}:00</th>
                        <th class="clicker"></th>
                    </tr></c:when></c:choose>
                </c:forEach>
                <c:forEach items="${hoursSaturdayOnService3}" var="time"> <c:choose><c:when test="${time != 0}">
                    <tr class="hours Saturday 3" hidden>
                        <th>${time}:00</th>
                        <th class="clicker"></th>
                    </tr></c:when></c:choose>
                </c:forEach>
                <c:forEach items="${hoursSundayOnService3}" var="time"> <c:choose><c:when test="${time != 0}">
                    <tr class="hours Sunday 3" hidden>
                        <th>${time}:00</th>
                        <th class="clicker"></th>
                    </tr></c:when></c:choose>
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





<%@ include file="parts/footer.jsp" %>

</body>
</html>