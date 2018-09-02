<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: frogy
  Date: 16.08.18
  Time: 18:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <link rel="stylesheet" href="/resources/css/style.css">

    <%@ include file="parts/meta.jsp" %>
    <title>Home Page</title>
    <%@ include file="parts/header.jsp" %>
</head>
<body>
<div class="view">
    <div>Sudoku</div>

    <table cellspacing="0">

        <tbody>
        <tr class="row1">
            <td class="top1 left1 sr sb block1"><input type="number"></td>
            <td class="top1 sl sr sb block1"><input type="number"></td>
            <td class="top1 sl right sb block1"><input type="number"></td>
            <td class="top1 left sr sb block2"><input type="number"></td>
            <td class="top1 sl sr sb block2"><input type="number"></td>
            <td class="top1 sl right sb block2"><input type="number"></td>
            <td class="top1 left sr sb block3"><input type="number"></td>
            <td class="top1 sl sr sb block3"><input type="number"></td>
            <td class="top1 sl right1 sb block3"><input type="number"></td>
        </tr>
        <tr class="row2">
            <td class="st left1 sr sb block1"><input type="number"></td>
            <td class="st sl sr sb block1"><input type="number"></td>
            <td class="st sl right sb block1"><input type="number"></td>
            <td class="st left sr sb block2"><input type="number"></td>
            <td class="st sl sr sb block2"><input type="number"></td>
            <td class="st sl right sb block2"><input type="number"></td>
            <td class="st left sr sb block3"><input type="number"></td>
            <td class="st sl sr sb block3"><input type="number"></td>
            <td class="st sl right1 sb block3"><input type="number"></td>
        </tr>
        <tr class="row3">
            <td class="st left1 sr bottom1 block1"><input type="number"></td>
            <td class="st sl sr bottom1 block1"><input type="number"></td>
            <td class="st sl right bottom1 block1"><input type="number"></td>
            <td class="st left sr bottom1 block2"><input type="number"></td>
            <td class="st sl sr bottom1 block2"><input type="number"></td>
            <td class="st sl right bottom1 block2"><input type="number"></td>
            <td class="st left sr bottom1 block3"><input type="number"></td>
            <td class="st sl sr bottom1 block3"><input type="number"></td>
            <td class="st sl right1 bottom1 block3"><input type="number"></td>
        </tr>
        <tr class="row4">
            <td class="top1 left1 sr sb block4"><input type="number"></td>
            <td class="top1 sl sr sb block4"><input type="number"></td>
            <td class="top1 sl right sb block4"><input type="number"></td>
            <td class="top1 left sr sb block5"><input type="number"></td>
            <td class="top1 sl sr sb block5"><input type="number"></td>
            <td class="top1 sl right sb block5"><input type="number"></td>
            <td class="top1 left sr sb block6"><input type="number"></td>
            <td class="top1 sl sr sb block6"><input type="number"></td>
            <td class="top1 sl right1 sb block6"><input type="number"></td>
        </tr>
        <tr class="row5">
            <td class="st left1 sr sb block4"><input type="number"></td>
            <td class="st sl sr sb block4"><input type="number"></td>
            <td class="st sl right sb block4"><input type="number"></td>
            <td class="st left sr sb block5"><input type="number"></td>
            <td class="st sl sr sb block5"><input type="number"></td>
            <td class="st sl right sb block5"><input type="number"></td>
            <td class="st left sr sb block6"><input type="number"></td>
            <td class="st sl sr sb block6"><input type="number"></td>
            <td class="st sl right1 sb block6"><input type="number"></td>
        </tr>
        <tr class="row6">
            <td class="st left1 sr bottom1 block4"><input type="number"></td>
            <td class="st sl sr bottom1 block4"><input type="number"></td>
            <td class="st sl right bottom1 block4"><input type="number"></td>
            <td class="st left sr bottom1 block5"><input type="number"></td>
            <td class="st sl sr bottom1 block5"><input type="number"></td>
            <td class="st sl right bottom1 block5"><input type="number"></td>
            <td class="st left sr bottom1 block6"><input type="number"></td>
            <td class="st sl sr bottom1 block6"><input type="number"></td>
            <td class="st sl right1 bottom1 block6"><input type="number"></td>
        </tr>
        <tr class="row7">
            <td class="top1 left1 sr sb block7"><input type="number"></td>
            <td class="top1 sl sr sb block7"><input type="number"></td>
            <td class="top1 sl right sb block7"><input type="number"></td>
            <td class="top1 left sr sb block8"><input type="number"></td>
            <td class="top1 sl sr sb block8"><input type="number"></td>
            <td class="top1 sl right sb block8"><input type="number"></td>
            <td class="top1 left sr sb block9"><input type="number"></td>
            <td class="top1 sl sr sb block9"><input type="number"></td>
            <td class="top1 sl right1 sb block9"><input type="number"></td>
        </tr>
        <tr class="row8">
            <td class="st left1 sr sb block7"><input type="number"></td>
            <td class="st sl sr sb block7"><input type="number"></td>
            <td class="st sl right sb block7"><input type="number"></td>
            <td class="st left sr sb block8"><input type="number"></td>
            <td class="st sl sr sb block8"><input type="number"></td>
            <td class="st sl right sb block8"><input type="number"></td>
            <td class="st left sr sb block9"><input type="number"></td>
            <td class="st sl sr sb block9"><input type="number"></td>
            <td class="st sl right1 sb block9"><input type="number"></td>
        </tr>
        <tr class="row9">
            <td class="st left1 sr bottom1 block7"><input type="number"></td>
            <td class="st sl sr bottom1 block7"><input type="number"></td>
            <td class="st sl right bottom1 block7"><input type="number"></td>
            <td class="st left sr bottom1 block8"><input type="number"></td>
            <td class="st sl sr bottom1 block8"><input type="number"></td>
            <td class="st sl right bottom1 block8"><input type="number"></td>
            <td class="st left sr bottom1 block9"><input type="number"></td>
            <td class="st sl sr bottom1 block9"><input type="number"></td>
            <td class="st sl right1 bottom1 block9"><input type="number"></td>
        </tr>
        </tbody>
    </table>
    <div>
        <button type="button" id="generate">Generate</button>
    </div>
    <script src="/resources/js/lazy.js"></script>
</div>
<%@ include file="parts/footer.jsp" %>
</body>
</html>