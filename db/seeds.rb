# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

first_name = %w[Jack Katherine Henry Hannah Tom Aidan]
last_name = %w[Hammond Dobson Buckley Singh Browne Davison]
email = %w[jack@outlook.com katherine@outlook.com henry@yahoo.com hannah@outlook.com tom@hotmail.com aidan@gmail.com]
phone_number = %w[7485963232 4565323232 9865321232 8485969696 6598456532 5869323232]

6.times { |i| Member.create(first_name: first_name[i], last_name: last_name[i], email: email[i], phone_number: phone_number[i]) }

date_today = Date.today
location = %w[Gujarat Rajasthan Delhi Mumbai Punjab]

5.times { |i| Game.create!(title: ('game '+(i+1).to_s), location: location[i], game_date: date_today, participants_attributes: [{member_id: 1, score: 25}, {member_id: 2, score: 45}]) }

3.times { |i| Game.create!(title: ('game '+(i+6).to_s), location: location[i], game_date: date_today, participants_attributes: [{member_id: 3, score: 35}, {member_id: 1, score: 74}]) }

2.times { |i| Game.create!(title: ('game '+(i+9).to_s), location: location[i], game_date: date_today, participants_attributes: [{member_id: 1, score: 55}, {member_id: 5, score: 85}]) }
