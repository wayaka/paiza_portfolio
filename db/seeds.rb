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
     content: '『Hello World』と出力してみよう！',
     search_word: '[言語名] helloworld'
   },
   {
     content: '『thank you』を10回出力してみよう！',
     search_word: '[言語名]　繰り返し',
   },
   {
     content: '2×8を出力してみよう！',
     search_word: '[言語名]　掛け算',
   },
   {
     content: '『もし年齢が18歳だったら、"未成年"』と出力してみよう！',
     search_word: '[言語名]　if文',
   },
   {
     content: '『りんご、みかん、さくらんぼ』の配列を作り、『さくらんぼ』を出力してみよう！',
     search_word: '[言語名]　配列',
   },
  ]
)
