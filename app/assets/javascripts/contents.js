var myTimer;

$(document).ready(function() {

  function htmlrender() {
    var html = $("#htmloutput").val();
    var css = $("#cssoutput").val();
    var children = $('#iframe-wrapper').children();
    var iframe = $(children[0]);
    iframe.appendTo('#iframe').contents().find('body').html(html);
    iframe.appendTo('#iframe').contents().find('head').html('<style>' + css + '</style>');
  }
  htmlrender();
  // Binds callable htmlrender to event 'input propertychange'
  // htmlrender gets called everytime text input changes
  $('.code_field').bind('input propertychange', htmlrender);
});
