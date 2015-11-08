u1 = User.create!(
  first_name: 'Betty',
  last_name: 'Maker',
  email: 'betty@maker.com',
  dob: '01011960',
  password: 'password',
  password_confirmation: 'password'
  )

c1 = Caregiver.create!(
  first_name: 'Bob',
  last_name: 'Maker',
  email: 'bob@maker.com',
  password: 'password',
  password_confirmation: 'password'
  )

r1 = Reminder.create!(
  reminder_name: 'Laundry',
  date: DateTime.strptime("11/08/2015", "%m/%d/%Y"),
  start_time: DateTime.strptime("22:00", "%H:%M"),
  duration: 108,
  repetition: 'weekly',
  notification: true,
  completion: false, 
  user_id: u1.id
  )

r2 = Reminder.create!(
  reminder_name: 'Call Michael Smith(son)! It\'s his birthday!' ,
  date: DateTime.strptime("11/22/2015", "%m/%d/%Y"),
  start_time: DateTime.strptime("9:00", "%H:%M"),
  repetition: 'weekly',
  notification: false,
  completion: false, 
  user_id: u1.id
  )

r3 = Reminder.create!(
  reminder_name: 'Take Alendronate',
  date: DateTime.strptime("11/01/2015", "%m/%d/%Y"),
  start_time: DateTime.strptime("6:00", "%H:%M"),
  repetition: 'weekly',
  notification: false,
  completion: false, 
  user_id: u1.id
  )

r4 = Reminder.create!(
  reminder_name: 'Take Alendronate',
  date: DateTime.strptime("11/08/2015", "%m/%d/%Y"),
  start_time: DateTime.strptime("6:00", "%H:%M"),
  repetition: 'weekly',
  notification: false,
  completion: false, 
  user_id: u1.id
  )

r5 = Reminder.create!(
  reminder_name: 'Take Alendronate',
  date: DateTime.strptime("11/15/2015", "%m/%d/%Y"),
  start_time: DateTime.strptime("6:00", "%H:%M"),
  repetition: 'weekly',
  notification: false,
  completion: false, 
  user_id: u1.id
  )

r6 = Reminder.create!(
  reminder_name: 'Take Alendronate',
  date: DateTime.strptime("11/22/2015", "%m/%d/%Y"),
  start_time: DateTime.strptime("6:00", "%H:%M"),
  repetition: 'weekly',
  notification: false,
  completion: false, 
  user_id: u1.id
  )

r7 = Reminder.create!(
  reminder_name: 'Take Alendronate',
  date: DateTime.strptime("11/29/2015", "%m/%d/%Y"),
  start_time: DateTime.strptime("6:00", "%H:%M"),
  repetition: 'weekly',
  notification: false,
  completion: false, 
  user_id: u1.id
  )

r8 = Reminder.create!(
  reminder_name: 'Laundry',
  date: DateTime.strptime("11/08/2015", "%m/%d/%Y"),
  start_time: DateTime.strptime("22:00", "%H:%M"),
  duration: 108,
  repetition: 'weekly',
  notification: true,
  completion: false, 
  user_id: u1.id
  )

