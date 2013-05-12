var myTimer;

$(document).ready( function() {

  function htmlrender() {
    var html = editor.getValue();
    var css = editor2.getValue();
    var children = $('#iframe-wrapper').children();
    var iframe = $(children[0]);
    iframe.appendTo('#iframe').contents().find('body').html(html);
    iframe.appendTo('#iframe').contents().find('head').html('<style>' + css + '</style>');
  }

  clearInterval(myTimer);
  myTimer = setInterval(htmlrender, 250);

  $('.submit_btn').click(function() {
    var html = editor.getValue();
    var css = editor2.getValue();
    $('#htmloutput').append(html.replace(/</g, "%3C").replace(/>/g, "%3E"));
    $('#cssoutput').append(css);
  });

});