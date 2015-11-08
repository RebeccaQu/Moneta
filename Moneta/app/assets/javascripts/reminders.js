$(document).on('ready', function() {
  var notice = new PNotify({
  title: 'Todays Medications',
  text: 'Take two Vitamin D pills before Breakfast',
  buttons: {
      closer: false,
      sticker: false
  }
  });
  notice.get().click(function() {
      notice.remove();
  });
  var notice1 = new PNotify({
  title: 'Todays is a family Members Birthday',
  text: 'Call Them',
  buttons: {
      closer: false,
      sticker: false
  }
  });
  notice1.get().click(function() {
      notice1.remove();
  });
  var notice2 = new PNotify({
    title: 'Laundry will be ready at 6 PM',
    text: 'Put Clothes in the dryer at 5:30',
    buttons: {
      closer_hover: false,
      sticker_hover: false
    }
  });
  notice2.get().click(function() {
      notice2.remove();
  });

$(this).trigger('pnotify.history-all');

});
