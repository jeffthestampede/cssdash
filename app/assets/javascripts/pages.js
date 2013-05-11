$(document).ready(function() {
  $(".card").each(function () {
    var cardDescription = $(this).children('.card_description');
    var iframeWrapper = $(this).children('.iframe_wrapper');
    $(this).mouseover(function () {
      cardDescription.removeClass('hidden');
    });
    $(this).mouseout(function () {
      cardDescription.addClass('hidden');
    });
  });
});
