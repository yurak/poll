# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
poll = Poll.create(title: "Football") 
q1 = Question.create(title: "Best player", points: 0, number: 1 )
q1.answers = Answer.create([{ title: 'Messi' }, { title: 'Ronaldu' },  { title: 'Steve G', correct: true } ])


q2 = Question.create(title: "Best FC", points: 0, number: 2 )
q2.answers = Answer.create([{ title: 'Liverpool', correct: true  }, { title: 'Real' },  { title:'Barca'} ])

q3 = Question.create(title: "Best FC", points: 0, number: 3 )
q3.answers = Answer.create([{ title: 'Liverpool', correct: true  }, { title: 'Real' },  { title:'Barca'} ])

q4 = Question.create(title: "Best FC", points: 0, number: 3 )
q4.answers = Answer.create([{ title: 'Liverpool', correct: true  }, { title: 'Real' },  { title:'Barca'} ])

q5 = Question.create(title: "Best FC", points: 0, number: 3 )
q5.answers = Answer.create([{ title: 'Liverpool', correct: true  }, { title: 'Real' },  { title:'Barca'} ])

q6 = Question.create(title: "Best FC", points: 0, number: 3 )
q6.answers = Answer.create([{ title: 'Liverpool', correct: true  }, { title: 'Real' },  { title:'Barca'} ])

q7 = Question.create(title: "Best FC", points: 0, number: 3 )
q7.answers = Answer.create([{ title: 'Liverpool', correct: true  }, { title: 'Real' },  { title:'Barca'} ])

poll.questions << q1 << q2 << q3 << q4 << q5 << q6 << q7
