class Magazine 

    require_relative '../lib/article'


    attr_accessor :name,:category

    @@all = []

    def initialize(name,category)
        @name = name
        @category = category
        @@all << self
    end

    def name
        @name 
    end

    def self.find_by_name(name)
        @@all.find { |magazine| magazine.name == name }
    end

    def article_titles
        Article.all.select { |article| article.magazine == self }.map { |article| article.title }
    end

    def category
        @category
    end

    def self.all
        @@all
    end

    def contributors
        Article.all.select { |article| article.magazine == self }.map { |article| article.author }
    end

    def contributing_authors
        Article.all.select { |article| article.magazine == self }.map { |article| article.author }
                    .group_by(&:name).select { |author, articles| articles.length > 2 }
                    .values.flatten.uniq
      
    end
end

