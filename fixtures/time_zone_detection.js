$(document).ready(function() {
    var TZ_COOKIE_NAME = 'tzoffset';
    var options = {
        path: '/',
        expires: 10
    };
    jQuery.cookie(TZ_COOKIE_NAME, new Date().getTimezoneOffset(), options);
});
