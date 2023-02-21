class Magazine

    @@all = []
    attr_accessor :name, :category
    def initialize(name,category)
        @name = name
        @category = category
        @@all << self
    end

    def name
        @name
    end
    def category
        @category
    end

    def self.all
        @@all
    end
end

