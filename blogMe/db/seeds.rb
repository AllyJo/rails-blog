# User.destroy_all
# Post.destroy_all
# Comment.destroy_all
# UserPost.destroy_all

# Users
tom = User.create!(username: 'Tom', email: 'tom@tom.com', password: 'tomtom')
ally = User.create!(username: 'Ally', email: 'ally@ally.com', password: 'ally')
# Posts
one = Post.create!(title: 'Test Post Title', body: 'Test Post Body', creator: User.first)
# Comments
first = Comment.create!(body: 'Test Comment')
