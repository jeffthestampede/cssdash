var myTimer;

$(document).ready(function() {

  function htmlrender() {
    var html = editor.getValue();
    var css = editor2.getValue();
    var children = $('#iframe-wrapper').children();
    var iframe = $(children[0]);
    $('#htmloutput').html(html); //.replace(/</g, "%3C").replace(/>/g, "%3E"));
    $('#cssoutput').html(css);
    iframe.appendTo('#iframe').contents().find('body').html(html);
    iframe.appendTo('#iframe').contents().find('head').html('<style>' + css + '</style>');
  };

  htmlrender();
  // Binds callable htmlrender to event 'input propertychange'
  // htmlrender gets called everytime text input changes
  $('.code_field').bind('input propertychange', htmlrender);
});
