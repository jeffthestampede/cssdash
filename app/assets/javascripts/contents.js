var myTimer;

$(document).ready( function() {

  function htmlrender() {
    var html = $("#htmloutput").val();
    var css = $("#cssoutput").val();
    var iframe = $("#iframe");
    iframe.appendTo('#iframe').contents().find('body').html(html);
    iframe.appendTo('#iframe').contents().find('head').html('<style>' + css + '</style>');
  }

  clearInterval(myTimer);
  myTimer = setInterval(htmlrender, 250);

});