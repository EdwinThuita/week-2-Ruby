require_relative '../lib/article'
    require_relative '../lib/magazine'
class Author

    attr_reader :name

    def initialize(name)
        @name = name
    end

    def add_article(magazine, title)
        Article.new(self, magazine, title)
    end
    
    def name
        @name
    end

    def topic_areas
        Article.all.select { |article| article.author == self }.map { |article| article.magazine.category }.uniq
    end

    def articles
        Article.all.select { |article| article.author == self }
    end

    def magazines
        Article.all.map { |article| article.magazine }.uniq
    end
end

