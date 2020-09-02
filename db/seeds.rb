User.create!(name:  "Admin User",
             email: "AdminUser@gmail.com",
             password:              "Admin001",
             password_confirmation: "Admin001",
             admin: true)

49.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@gmail.com"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end

#generate microposts
users = User.order(:created_at).take(6)
20.times do
  content = Faker::Lorem.sentence(word_count: 5)
  users.each {|user| user.microposts.create!(content: content) }
end