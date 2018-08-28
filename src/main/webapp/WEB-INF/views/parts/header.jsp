<%--
  Created by IntelliJ IDEA.
  User: frogy
  Date: 16.08.18
  Time: 20:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- Bootstrap -->
<link href="/resources/css/bootstrap.min.css" rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--&lt;!&ndash;[if lt IE 9]>-->
<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>


<nav class="navbar navbar-expand-lg navbar-light bg-light">

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Link</a>
            </li>
            <li class="nav-item"><a class="badge badge-success" href="#">Services</a></li>
            <li class="nav-item"><a class="nav-link badge badge-success" href="#">Reservation</a></li>
            <li class="nav-item"><a class="nav-link" href="#">Contact</a></li>
            <li class="nav-item"><a class="nav-link" href="#">Admin panel</a></li>




        </ul>

    </div>
</nav>
<!--<div class="header-panel"> <ul>-->
    <!--<li><a class="myButton">Home</a></li>-->
    <!--<li><a class="myButton">Services</a></li>-->
    <!--<li><a class="myButton">Reservation</a></li>-->
    <!--<li><a class="myButton">Contact</a></li>-->
    <!--<li><a class="myButton">Admin panel</a></li>-->
<!--</ul>-->






Main goals :
Ability for client to book a service at specific date from selected service provider, when it is available.

Project assumptions:
3 user types :
1. Administrator
* Can add / edit / remove services accessible for client to book.
* Can add / edit / remove service providers information.
* Can add / edit / remove reservations created by clients.
2. Service provider
* Should have defined :
- working hours for every day of week;
- slot amount - number of clients he can handle at the same time.
- services he supports.
* Can add / edit / remove informations about himself.
* Can check current reservation on him
3. Client

</div>