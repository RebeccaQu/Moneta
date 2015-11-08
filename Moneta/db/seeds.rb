User.create!(
  first_name: 'Hacker',
  last_name: 'Nest',
  email: 'hacker.nest@moneta.com',
  dob: '01011960',
  password: 'password',
  password_confirmation: 'password'
  )

Caregiver.create!(
  first_name: 'Sam',
  last_name: 'Smith',
  email: 'sam.smith@moneta.com',
  password: 'password',
  password_confirmation: 'password'

  )

r1 = Reminder.create!(
  reminder_name: 'Laundry',
  date: DateTime.strptime("11/21/2015 14:00", "%m/%d/%Y %H:%M"),
  start_time: DateTime.strptime("11/21/2015 14:00", "%m/%d/%Y %H:%M"),
  duration: 108,
  repetition: 'weekly',
  notification: true,
  completion: false
  )

r2 = Reminder.create!(
  reminder_name: 'Algonquin Trip',
  date: DateTime.strptime("11/20/2015 12:00", "%m/%d/%Y %H:%M"),
  start_time: DateTime.strptime("11/20/2015 12:00", "%m/%d/%Y %H:%M"),
  duration: 86400,
  repetition: 'none',
  notification: false,
  completion: false
  )

