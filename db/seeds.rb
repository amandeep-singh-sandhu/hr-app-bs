# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
employee = Employee.create(first_name: 'Amandeep', middle_name: 'Singh', last_name: 'Sandhu', personal_email: 'abc@abcd.com', city: 'Kapurthala', state: 'Punjab', country: 'India', pincode: '123456', address_line_1: 'some address')

employee = Employee.new(first_name: 'Amandeep', middle_name: 'Singh', last_name: 'Sandhu', personal_email: 'abcz@abcd.com', city: 'Kapurthalaa', state: 'Punjaab', country: 'Indiaa', pincode: '1234567', address_line_1: 'some address1')

employee.save