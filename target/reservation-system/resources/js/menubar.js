$(document).ready(function () {
    $("li:contains('Home')").on("click",function () {
        window.location.href = 'http://localhost:8080/home';
    });
    $("li:contains('Services')").on("click",function () {
        window.location.href = 'http://localhost:8080/services';
    });
    $("li:contains('Reservation')").on("click",function () {
        window.location.href = 'http://localhost:8080/reservation';
    });
    $("li:contains('Contact')").on("click",function () {
        window.location.href = 'http://localhost:8080/contact';
    });
    $("a:contains('Admin panel')").on("click",function () {
        window.location.href = 'http://localhost:8080/adm';
    });

    }
    )
