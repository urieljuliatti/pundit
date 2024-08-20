u = User.create(email: 'admin@example.com', password: '123456', admin: true)
Article.create(title: 'Article 1',  content: 'This is article 1', user: u)
