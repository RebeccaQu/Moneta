$(document).on('ready page:load', function(){


  $('#laundry-form').submit(function(){
    new PNotify({
        title: 'Laundry Reminder Notice',
        text: 'Laundry is Finished'
    });
  });


  $('#grocery-form').submit(function(){
      new PNotify({
          title: 'Groceries',
          text: 'Get Groceries'
      });
  });


  $('#garbage-form').submit(function(){
      new PNotify({
          title: 'Garbage Day',
          text: 'Tomorrow is garbage day'
      });
  });

  $('#meeting-form').submit(function(){
      new PNotify({
          title: 'Meeting Reminder',
          text: 'Meeting starts in an hour'
      });
  });

  $('#dinner-form').submit(function(){
      new PNotify({
          title: 'Dinner Time',
          text: 'Time to Plan dinner'
      });
  });

})