require_relative '../lib/article'
require_relative '../lib/author'
require_relative '../lib/magazine'

edwin = Author.new("edwin")
#puts edwin.name

mercedez = Magazine.new("mercedez","cars")

article = Article.new(edwin ,mercedez,"Mercedez")
puts article.author.name