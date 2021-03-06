
class Cli
    def run 
        puts " "
        puts "Hello and welcome to my COUNTRIES APP!" if Country.all.length == 0
        Api.get_countries if Country.all.length == 0
        puts " "
        puts "Enter a name of a country to get more information about it."
        puts "..Enter 'list' to SELECT from a list of all the countries IN THE WORLD."
        puts "...Or Enter 'exit' to exit! "
        puts " "
        @country = gets.strip.downcase
        if @country == "list"
            print_list
        elsif Country.countries_list.include?(@country.capitalize)
            print_country_info
        elsif @country == 'exit'
            puts "---------------------------------------"
            puts " "
            puts "Thank you for using my APP:)"
            puts " "
            puts "Bye!"
            puts " "
            puts "---------------------------------------"
            exit
        else
            error
        end 
    end 



    def print_list 
        puts " "
        puts "Here is a list of all 250 countries. Type in a number to get more info on that country."
        puts "---------------------------------------"
        Country.countries_list.each.with_index(1) do |name, index|
            puts "#{index}. #{name}" 
            puts "---------------------------------------"
        end
        puts " "
        puts "Enter a number from the list ^ to get more info on the country:"
        input = gets.strip.downcase.to_i
        @country = Country.countries_list[input - 1]
        print_country_info
    end 

    def print_country_info 
        @country_object = Country.get_country(@country.capitalize)
        puts " "
        puts "Here is more information on #{@country_object.name.upcase}:"
        puts " "
        puts "---------------------------------------"
        puts " "
        puts "Capital: #{@country_object.capital}"
        puts " "
        puts "Population: #{add_commas(@country_object.population.to_s)}" 
        puts " "
        puts "Language(s): #{@country_object.language}"
        puts " "
        puts "Currency: #{@country_object.currency} (#{@country_object.symbol})"
        puts " "
        puts "Region: #{@country_object.region}"
        puts " "
        puts "Sub-region: #{@country_object.sub_region}"
        puts " "
        puts "---------------------------------------"
        run 
    end 


    def error  
        puts "---------------------------------------"
        puts "I do not understand- please try again:"
        puts " "
        run  
    end 



    def add_commas(num_string)
        #Gives commas to a string of intgers, then converts that string into an integer. 
        #So if you want to pass in a number you first have to convert it into a string using to_s.
        num_string.reverse.scan(/\d{3}|.+/).join(",").reverse
    end 
    
end 