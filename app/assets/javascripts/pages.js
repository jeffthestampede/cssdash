$(document).ready( function() {

  var all_divs = $('#content_container').children();

  $(all_divs).each(function(i) {
    var each_div = $('#content_container').children()[i]; // equal <div id="content2">..</div>
    var html = $($(each_div).children()[3]).text(); // equal p tag with html
    var css = $($(each_div).children()[4]).html(); // equal p tag with css
    var iframe_wrapper = $(each_div).children()[8]; // equal <div id="iframe-wrapper">..</div> WTH? why is it 17 now?
    var iframe = $($(iframe_wrapper).children()[0]);
    iframe.appendTo(iframe).contents().find('body').html(html);
    iframe.appendTo(iframe).contents().find('head').html('<style>' + css + '</style>');

  });

});