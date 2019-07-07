$(document).on('turbolinks:load', function() {

    if ($('#demo-foo-addrow').length > 0) {
        $('#demo-foo-addrow').footable();
    }

    // MAterial Date picker
    if ($('.mdatepicker').length) {
        $('.mdatepicker').bootstrapMaterialDatePicker({ weekStart: 0, time: false });
    }
    if ($('.mdatetimepicker').length) {
        $('.mdatetimepicker').bootstrapMaterialDatePicker({ format: 'dddd DD MMMM YYYY - HH:mm' });
    }

    // summernote
    $('.summernote').summernote({
        height: 350, // set editor height
        minHeight: null, // set minimum height of editor
        maxHeight: null, // set maximum height of editor
        focus: false // set focus to editable area after initializing summernote
    });
    //Bootstrap selectpicker
    $('.selectpicker').selectpicker();

})