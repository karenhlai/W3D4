# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(username: "yo mama")
user2 = User.create(username: "yo papa")
user3 = User.create(username: "yo sis")
user4 = User.create(username: "yo bro")
user5 = User.create(username: "yo gramgram")

poll1 = Poll.create(title: "Cats", user_id: 1)

question1 = Question.create(poll_id: 1, text: "how many cats do you see boi?")

ac1 = AnswerChoice.create(question_id: 1, text: "14")
ac2 = AnswerChoice.create(question_id: 1, text: "1000")
ac3 = AnswerChoice.create(question_id: 1, text: "69")

response1 = Response.create(user_id: 2, answer_choice_id: 1)
response2 = Response.create(user_id: 3, answer_choice_id: 2)
response3 = Response.create(user_id: 4, answer_choice_id: 3)
response4 = Response.create(user_id: 5, answer_choice_id: 1)


