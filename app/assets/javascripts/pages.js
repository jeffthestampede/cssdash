$(document).ready(function() {
  $(".card").each(function () {
    var cardDescription = $(this).children('.card_description');
    var iframeWrapper = $(this).children('.iframe_wrapper');
    $(this).mouseover(function () {
      iframeWrapper.addClass('hidden');
      cardDescription.removeClass('hidden');
    });
    $(this).mouseout(function () {
      iframeWrapper.removeClass('hidden');
      cardDescription.addClass('hidden');
    });
  });
});
