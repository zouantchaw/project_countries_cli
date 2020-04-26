class Country
    attr_accessor :name, :capital, :region, :sub_region, :population, :language, :currency, :symbol

    @@all = []

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

    def self.countries_list
        array = @@all.collect { |country| country.name} 
        array
    end 

    def self.print_country(name)
        object = @@all.detect { |x| x.name == name}
    end 


    def self.find_by_name(name)
        @@all.select {|c| c.name == name.capitalize}
    end 

end 