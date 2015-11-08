$(document).on('ready', function() {
 $('#submit-form').submit(function() {
    var notice = new PNotify({
      title: 'Notice- Groceries',
      text: 'Reminder - Go to Loblaws for apples.'
    });
    notice.get().click(function(e) {
      if ($(e.target).is('.ui-pnotify-closer *, .ui-pnotify-sticker * ')) return;
      notice.get().click(function() {
        notice.remove();
      });

    var stickyNotice = new PNotify({
      title: '',
      text: '',
      hide: false
    });
    notice.get().click(function() {
      if ($(e.target).is('.ui-pnotify-closer *, .ui-pnotify-sticker * ')) return;
      notice.remove();
    })
  });
 });
});