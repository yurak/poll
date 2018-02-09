# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or newd alongside the db with db:setup).
#
# Examples:
#
#   cities = City.new([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.new(name: 'Emanuel', city: cities.first)
poll = Poll.new(title: "Sport poll")
content =  YAML.load_file(Rails.root.join('config', 'seed.yml'))

content.each do |key, value|
  q = Question.new(content: value['question'])
  q.multiple_choice = value['multiple_choice']
  q.answers  <<  value['answers'].map{ |a| Answer.new(content:a )} << value['correct'].map{ |a| Answer.new(content: a, correct: true )}

  poll.questions << q
end

poll.save
