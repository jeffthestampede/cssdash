var myTimer;

$(document).ready( function() {

  function htmlrender() {
    var html = $("#htmloutput").val();
    var css = $("#cssoutput").val();
    var children = $('#iframe-wrapper').children();
    var iframe = $(children[0]);
    iframe.appendTo('#iframe').contents().find('body').html(html);
    iframe.appendTo('#iframe').contents().find('head').html('<style>' + css + '</style>');
  }

  htmlrender();

  $('#htmloutput').focusin(function () {
    clearInterval(myTimer);
    myTimer = setInterval(htmlrender, 250);
  });

  $('#htmloutput').focusout(function () {
    clearInterval(myTimer);
  });

  $('#cssoutput').focusin(function () {
    clearInterval(myTimer);
    myTimer = setInterval(htmlrender, 250);
  });

  $('#cssoutput').focusout(function () {
    clearInterval(myTimer);
  });

});