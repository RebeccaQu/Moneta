$(document).on('ready page:load', function(){

  var notice = new PNotify({
    title: 'Notice- Groceries',
    text: 'Reminder - Go to Loblaws for apples.'
  });
  notice.get().click(function(e) {
    if ($(e.target).is('.ui-pnotify-closer , ')) return;
    notice.update({
        type: 'success',
        text: 'Yay, you clicked me!<div style="text-align: center;"></div>'
    });
  });
  // $(function(){
  //   new PNotify({
  //       title: 'LaundryReminder Notice',
  //       text: 'Laundry is Finished'
  //   });
  // });


  // $('#grocery-form').submit(function(){
  //     new PNotify({
  //         title: 'Groceries',
  //         text: 'Get Groceries'
  //     });
  // });


  // $('#garbage-form').submit(function(){
  //     new PNotify({
  //         title: 'Garbage Day',
  //         text: 'Tomorrow is garbage day'
  //     });
  // });

  // $('#meeting-form').submit(function(){
  //     new PNotify({
  //         title: 'Meeting Reminder',
  //         text: 'Meeting starts in an hour'
  //     });
  // });

  // $('#dinner-form').submit(function(){
  //     new PNotify({
  //         title: 'Dinner Time',
  //         text: 'Time to Plan dinner'
  //     });
  // });

})