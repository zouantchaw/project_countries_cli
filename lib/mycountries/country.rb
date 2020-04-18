class Country
    attr_accessor :name, :capital, :region, :sub_region, :population, :language, :currency, :symbol

    @@all = []
    COUNTRIES_LIST = []

    def initialize(name:, capital:, region:, sub_region:, population:, language:, currency:, symbol:)
        @name = name 
        @capital = capital 
        @region = region
        @sub_region = sub_region
        @population = population
        @language = language
        @currency = currency
        @symbol = symbol
        save 
    end 

    def save 
        @@all << self 
    end 

    def self.all
        @@all
    end

    def self.list
        COUNTRIES_LIST
    end 

    def self.find_by_name(name)
        @@all.select {|c| c.name == name.capitalize}
    end 

    def self.print_by_name(name)
        if @@all.select {|c| c.name == name.capitalize}
            
        end 
    end 
end 