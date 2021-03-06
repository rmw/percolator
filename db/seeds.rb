# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
types = %w(user idea solution challenger)
usernames = %w(indigo mario simon tim berners lee)
count = 0
5.times do
  User.create(username: usernames[count])
  count += 1
end

10.times do
  Idea.create(user_id: rand(5) + 1)
end

20.times do
  Solution.create(idea_id: rand(10) + 1, user_id: rand(5) + 1)
end

50.times do
  Challenger.create(solution_id: rand(20) + 1, idea_id: rand(10) + 1, user_id: rand(5) + 1)
end

100.times do

  case types.sample
  when "user"
    type = "user"
    count = 5
  when "idea"
    type = "idea"
    count = 10
  when "solution"
    type = "solution"
    count = 20
  when "challenger"
    type = "challenger"
    count = 50
  end

  Vote.create(voteable_type: type, voteable_id: rand(count) + 1)
end

# latest transcript

# income transcript
