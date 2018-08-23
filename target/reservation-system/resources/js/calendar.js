
$(document).ready(function () {


    $(document).on("change", function () {
        var data = $('#datepicker-2').datepicker({dateFormat: 'dd-mm-yy'}).val();

        var day =  $('#datepicker-2').datepicker('getDate');

        $(".inputhere").text(data + " " + $.datepicker.formatDate('DD', day));


        $(".hideme").removeAttr('hidden');


    })

    $("input.dontsend").on("click", function () {
        var s =$('#selector').val();
        console.log(s);


        return false;
    });
})