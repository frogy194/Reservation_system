
$(document).ready(function () {

    $('#datetimepicker12').on('dp.change', function() {

        $(".inputhere").text($('#datetimepicker12').data('DateTimePicker').date().format('LL'));
        $("#dayOfMonth").val($('#datetimepicker12').data('DateTimePicker').date().date());
        $("#dayOfWeek").val($('#datetimepicker12').data('DateTimePicker').date().day());
        $("#month").val($('#datetimepicker12').data('DateTimePicker').date().month());
        $("#year").val($('#datetimepicker12').data('DateTimePicker').date().year());
        document.getElementById("formreserv").submit()
    });







    // $(document).on("change", function () {
    //
    //     $('#datetimepicker12').data('DateTimePicker').date().toDate();
    //
    // });
    // $("tr.hours").find("th.clicker").on("click",function (e) {
    //     window.location.replace("http://localhost:8080/reservation/add/" + $('#datepicker-2').datepicker({dateFormat: 'dd-mm-yy'}).val() + "/" + $(e.target).prev().text() + "/" + $('#selector').val());
    // })



});