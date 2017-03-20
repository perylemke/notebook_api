namespace :dev do
  desc "Configure the development environment"
  task setup: :environment do
    puts "Starting the process..."

    100.times do |i|
      Contact.create!(
        name: Faker::Name.name,
        email: Faker::Internet.free_email,
        birthdate: Faker::Date.between(65.years.ago, 18.years.ago)
      )
    end

    puts "Finished the process!"
  end

end
