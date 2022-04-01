Animal.destroy_all
Appointment.destroy_all
City.destroy_all
Client.destroy_all
Doctor.destroy_all
Specialty.destroy_all
User.destroy_all

10.times do |i|
  User.create(
    email: 'user-mail' + i + '@yopmail.com',
    encrypted_password: '',
    reset_password_token: '',
    reset_password_sent_at: Time.now,
    remember_created_at: Time.now,
    type: '',
  )
end

10.times do |i|
  Specialty.create(
    name: '',
  )
end

10.times do |i|
  Doctor.create(
    first_name: '',
    last_name: '',
    name_office: '',
    zip_code: '',
    phone: rand(10...250),
    description: 'Lorem ipsum ...',
  )
end

10.times do |i|
  Client.create(
    first_name: '',
    last_name: '',
    zip_code: '',
    phone: rand(10...250),
  )
end

10.times do |i|
  City.create(
    name: '',
    zip_code: '',
  )
end

10.times do |i|
  Appointment.create(
    date: Time.now,
    title: '',
    zip_code: '',
    description: 'Lorem ipsum ...',
  )
end

10.times do |i|
  Animal.create(
    name: '',
    species: '',
    breed: '',
    gender: '',
    birth: Date.now,
  )
end