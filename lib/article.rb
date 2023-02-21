class Article
    attr_reader :author, :title, :magazine
    @@all = []
    def initialize(author,magazine,title)
        @author = author
        @magazine = magazine
        @title = title
        @@all << self
    end
     def title
        @title
     end
     def self.all
        @@all
