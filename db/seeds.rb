20.times do
  User.create(username: Faker::Twitter.screen_name, email: Faker::Internet.email)
end

8.times do
  Category.create(name: Faker::Book.genre)
end

30.times do
  Post.create(title: Faker::Book.title, content: Faker::Lorem.paragraph(2))
end

30.times do
  PostCategory.create(post_id: Post.all.sample.id, category_id: Category.all.sample.id)
end

60.times do
  Comment.create(content: Faker::TwinPeaks.quote, user_id: User.all.sample.id, post_id: Post.all.sample.id)
end
