
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


})