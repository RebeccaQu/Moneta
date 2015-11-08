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
  reminder_name: 'Algonquin Trip',
  date: DateTime.strptime("11/20/2015", "%m/%d/%Y"),
  start_time: DateTime.strptime("12:00", "%H:%M"),
  duration: 86400,
  repetition: 'none',
  notification: false,
  completion: false, 
  user_id: u1.id
  )

