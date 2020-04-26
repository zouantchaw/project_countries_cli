class Api

    def self.get_countries
        ex_symbol= "$"
        url = "https://restcountries.eu/rest/v2/all"
        response = Net::HTTP.get_response(URI(url)).body
        countries_list = JSON.parse(response)
        countries_list.each do |country|
            Country.new(name: country["name"], capital: country["capital"], region: country["region"], sub_region: country["subregion"], population: country["population"], language: country["languages"][0]["name"], currency: country["currencies"][0]["name"], symbol: country["currencies"][0]["symbol"])
        end 
    end 
end 
