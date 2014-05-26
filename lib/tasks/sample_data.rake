namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    puts "Populating the database..."
    admin = User.create!(name: "Luigi De Russis",
                         email: "luigi.derussis@polito.it",
                         password: "lam2014",
                         password_confirmation: "lam2014")
    admin.toggle!(:admin)
    puts "... the admin user has been created"
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@lam.it"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
    puts "... 99 users have been created"

    # generate 50 fake posts for the first 10 users
    users = User.all(limit: 10)
    50.times do
      post_title = Faker::Lorem.sentence(3)
      post_content = Faker::Lorem.paragraph
      users.each { |user| user.posts.create!(title: post_title, content: post_content )}
    end
    puts "... 50 posts for the first 10 users have been created"

  end
end