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


<div class="container">
<table>
    <thead>
    <td>Calendar</td>
    <td class="inputhere"></td>
    <td></td>
    </thead>
    <tr>
        <td class="hideme" >
            <form class="formreserv" method="post">
                <label>Choose your service :</label>
                <br>
                <select name="selectedserv" id="selector">
                    <c:forEach items="${services}" var="service">
                        <option value="${service.id}">${service.name}</option>
                    </c:forEach>

                </select>
                <br>
                <input type="submit">
            </form>

        </td>
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



            </table>
        </td>

    </tr>
</table>
</div>




<script src="/resources/js/calendar.js"></script>
<%@ include file="parts/footer.jsp" %>

</body>
</html>