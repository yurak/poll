# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or newd alongside the db with db:setup).
#
# Examples:
#
#   cities = City.new([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.new(name: 'Emanuel', city: cities.first)
poll = Poll.new(title: "Sport")
q1 = Question.new(content: "Best player", order_number: 1 )
q1.answers = Answer.create([{ content: 'Messi' }, { content: 'Ronaldu' },  { content: 'Steve G', correct: true } ])

q2 = Question.new(content: "Best FC", order_number: 2, multiple_choice: true )
q2.answers = Answer.create([{ content: 'Liverpool', correct: true  }, { content: 'Real', correct: true },  { content:'Barca'} ])

q3 = Question.new(content: "Best ENG FC", order_number: 3 )
q3.answers = Answer.create([{ content: 'Liverpool', correct: true  }, { content: 'Real' },  { content:'Barca'} ])

q4 = Question.new(content: "Best F1 Team", order_number: 4, multiple_choice: true)
q4.answers = Answer.create([{ content: 'MClaren', correct: true  }, { content: 'Mercedes' },  { content:'Fiat'} ])

q5 = Question.new(content: "Best FC", order_number: 5 )
q5.answers = Answer.create([{ content: 'Liverpool', correct: true  }, { content: 'Real' },  { content:'Barca'} ])

q6 = Question.new(content: "Best FC", order_number: 6 )
q6.answers = Answer.create([{ content: 'Liverpool', correct: true  }, { content: 'Real' },  { content:'Barca'} ])

q7 = Question.new(content: "Best FC", order_number: 7 )
q7.answers = Answer.create([{ content: 'Liverpool', correct: true  }, { content: 'Real' },  { content:'Barca'} ])

poll.questions << [q1, q2, q3, q4, q5, q6, q7]
poll.save