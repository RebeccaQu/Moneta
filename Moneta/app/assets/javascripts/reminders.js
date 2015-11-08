$(document).on('ready', function() {

    var notice = new PNotify({
      title: 'Notice- Groceries',
      text: 'Reminder - Go to Loblaws for apples.'
    });
    notice.get().click(function(e) {
      if ($(e.target).is('.ui-pnotify-closer *, .ui-pnotify-sticker * ')) return;
      notice.update({
          type: 'success',
          text: 'Task Complete?!<div style="text-align: center;"></div>'
      });
    notice.get().click(function() {
      notice.remove();
    });

    var stickyNotice = new PNotify({
      title: 'Sticky Notice',
      text: 'Check me out! I\'m a sticky notice. You\'ll have to close me yourself.',
      hide: false
    });
    notice.get().click(function() {
      if ($(e.target).is('.ui-pnotify-closer *, .ui-pnotify-sticker * ')) return;
      notice.remove();
    })

    // var notice = new PNotify({
    //   title: 'Notice- Groceries',
    //   text: 'Reminder - Go to Loblaws for apples.'
    // });

    // notice.get().click(function(e) {
    //   if ($(e.target).is('.ui-pnotify-closer *, .ui-pnotify-sticker * ')) return;
    //   notice.update({
    //       type: 'success',
    //       text: 'Task Complete?!<div style="text-align: center;"></div>'
    //   });
    // notice.get().click(function() {
    //   notice.remove();
    // });

    // var stickyNotice = new PNotify({
    //   title: 'Sticky Notice',
    //   text: 'Check me out! I\'m a sticky notice. You\'ll have to close me yourself.',
    //   hide: false
    // });
    // notice.get().click(function() {
    //   if ($(e.target).is('.ui-pnotify-closer *, .ui-pnotify-sticker * ')) return;
    //   notice.remove();
    // })
  });

  $(function(){
  $("form").submit(function(event){
    event.preventDefault();

    var action = $(this).attr('action');
    var method = $(this).attr('method');

    var name = $(this).find('#reminder_name').val();
    });

    $.ajax({
        method: method,
        url: action,
        data: { name:name }
        dataType: 'script'
      });
  });



  // });

})