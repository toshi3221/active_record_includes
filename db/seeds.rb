# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

100.times do |i|
  article = Article.new title: "タイトル#{format '%04d', i+1}", body: "本文#{format '%04d', i+1}"
  10.times do |j|
    article.comments.build body: "タイトル#{format '%04d', i+1}のコメント#{format '%03d', j+1}"
  end
  article.save!
end