
$(document).ready(function () {


    $(document).on("change", function () {

        var data = $('#datepicker-2').datepicker({dateFormat: 'dd-mm-yy'}).val();

        var nice =  $('#datepicker-2').datepicker('getDate');
        var day = $.datepicker.formatDate('DD', nice);

        $(".inputhere").text(data + " " + day);


        $(".hideme").removeAttr('hidden');
        $(".hours").attr('hidden', true);
        $("." + day + "." + $('#selector').val()).removeAttr('hidden');


    })
    $("tr.hours").find("th.clicker").on("click",function (e) {
        window.location.replace("http://localhost:8080/reservation/add/" + $('#datepicker-2').datepicker({dateFormat: 'dd-mm-yy'}).val() + "/" + $(e.target).prev().text() + "/" + $('#selector').val());
    })



})