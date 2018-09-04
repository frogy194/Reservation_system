
$(document).ready(function () {

    $('#datetimepicker12').on('dp.change', function() {

        $(".inputhere").text($('#datetimepicker12').data('DateTimePicker').date().format('LL'));

    });


    $(document).on("change", function () {



        $('#datetimepicker12').data('DateTimePicker').date().toDate();

        $(".inputhere").text(data + " " + day);


        $(".hideme").removeAttr('hidden');
        $(".hours").attr('hidden', true);
        $("." + day + "." + $('#selector').val()).removeAttr('hidden');


    });
    $("tr.hours").find("th.clicker").on("click",function (e) {
        window.location.replace("http://localhost:8080/reservation/add/" + $('#datepicker-2').datepicker({dateFormat: 'dd-mm-yy'}).val() + "/" + $(e.target).prev().text() + "/" + $('#selector').val());
    })



});