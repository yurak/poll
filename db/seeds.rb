# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or newd alongside the db with db:setup).
#
# Examples:
#
#   cities = City.new([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.new(name: 'Emanuel', city: cities.first)
poll = Poll.new(title: "Sport poll")
q1 = Question.new(content: "Who is the best player?", order_number: 1 )
q1.answers = Answer.create([{ content: 'Messi' }, { content: 'Ronaldu' },  { content: 'Steve G', correct: true } ])

q2 = Question.new(content: "Best England FC?", order_number: 2 )
q2.answers = Answer.create([{ content: 'Liverpool', correct: true  }, { content: 'Man U'},  { content:'Arsenal'} ])

q3 = Question.new(content: "Best free kick scorers?", order_number: 3, multiple_choice: true )
q3.answers = Answer.create([{ content: 'Juninho', correct: true  }, { content: 'Bekham', correct: true },  { content:'Ronaldu'} ])

q4 = Question.new(content: "Best managers", order_number: 4, multiple_choice: true)
q4.answers = Answer.create([{ content: 'Lobanovsky', correct: true  }, { content: 'Guardiola' },  { content: 'Ferguson'} ])

q5 = Question.new(content: "What team is the best in Italy?", order_number: 5 )
q5.answers = Answer.create([{ content: 'Milan', correct: true  }, { content: 'Inter' }, { content:'Juventus'} ])

q6 = Question.new(content: "Ukrainina Golden ball winners are ...", order_number: 6, multiple_choice: true )
q6.answers = Answer.create([{ content: 'Sheva', correct: true  }, { content: 'Blohin', correct: true },  { content:'Lobanovsky'} ])

q7 = Question.new(content: "Last 'golden boy' award winner is", order_number: 7 )
q7.answers = Answer.create([{ content: 'Sterling', correct: true  }, { content: 'Pogba' },  { content:'Coutinho'} ])

poll.questions << [q1, q2, q3, q4, q5, q6, q7]
poll.save