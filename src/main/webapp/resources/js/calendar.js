
$(document).ready(function () {

    $('#datetimepicker12').data("DateTimePicker").date(new Date(yearjs,monthjs,dayjs,hourjs,minutejs));
    $(".inputhere").text($('#datetimepicker12').data('DateTimePicker').date().format('LL'));
    $("option[value='" + idjs + "']").attr('selected', 'selected');

    $('#datetimepicker12').on('dp.change', function() {


        $("#dayOfMonth").val($('#datetimepicker12').data('DateTimePicker').date().date());
        $("#dayOfWeek").val($('#datetimepicker12').data('DateTimePicker').date().day());
        $("#month").val($('#datetimepicker12').data('DateTimePicker').date().month());
        $("#year").val($('#datetimepicker12').data('DateTimePicker').date().year());
        $("#minute").val($('#datetimepicker12').data('DateTimePicker').date().minute());
        $("#hour").val($('#datetimepicker12').data('DateTimePicker').date().hour());
        document.getElementById("formreserv").submit()
    });



});