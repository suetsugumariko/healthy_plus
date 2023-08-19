  # frozen_string_literal: true

  # This file should contain all the record creation needed to seed the database with its default values.
  # The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
  #
  # Examples:
  #
  #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
  #   Character.create(name: 'Luke', movie: movies.first)
  Admin.create!(email: ENV["ADMIN_EMAIL"], password: ENV["ADMIN_PASSWORD"])

  customer = Customer.create!(email: "sample@sample", password: "password", first_name: "hanako", last_name: "sample")

  exercise_times = (1..5)
  hours_of_sleeps = (3..12)
  start_time = Time.zone.now.ago(1.month).beginning_of_day

  30.times do |n|
  customer.activity_and_sleep_log_charts.create!(start_time: start_time.since(n.day),
                                                 exercise_time: rand(exercise_times),
                                                 hours_of_sleep: rand(hours_of_sleeps))
end
