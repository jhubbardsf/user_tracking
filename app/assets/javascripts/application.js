// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require turbolinks
//= require twitter/bootstrap
//= require_tree .

$(function () {
    // Trigger event when elements with record-click are clicked.
    $(document).on('click', '.record-click', function () {
        // Get information embedeed in the form.
        var $form = $(this).closest('form'),
            fieldName = $(this).closest('.form-group').children('label').text(),
            id = $form.data('id'),
            recordUrl = $form.data("record-url");


        // Send post request to record click in database.
        $.post(recordUrl, {
            user_click: {
                user_id: id,
                field: fieldName
            }
        });
    })
});