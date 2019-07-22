# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Language.create!(
  [
   {
     code: 'ruby',
     name: 'Ruby'
   },
   {
     code: 'python',
     name: 'Python',
   },
   {
     code: 'c_cpp',
     name: 'C',
   }
  ]
)

Question.create!(
  [
    {
     content: '『こんにちは』と出力してみよう！',
     search_word: '[言語] 出力'
   },
   {
     content: '『ありがとう』を10回出力してみよう！',
     search_word: '[言語]　for',
   }
  ]
)
