class Api
    def self.get_country_list
        url = "https://restcountries.eu/rest/v2/all"
        response = Net::HTTP.get_response(URI(url)).body
        countries_list = JSON.parse(response)
        clean_list = countries_list.collect do |country|
            country["name"]
        end
    end 

    def self.get_country_info(country)
        x = country.gsub(" ", "%20")
        url = "https://restcountries.eu/rest/v2/name/#{x}?fullText=true"
        response = Net::HTTP.get(URI(url))
        parsed_response = JSON.parse(response)[0]
        currency_symbol = parsed_response ["currencies"].map {|s| s["symbol"]}.join
        currencies = parsed_response["currencies"].map {|c | c["name"]}.join
        languages = parsed_response["languages"].map {|l| l["name"]}.join(", ")
        Country.new(name: parsed_response["name"], capital: parsed_response["capital"], region: parsed_response["region"], sub_region: parsed_response["subregion"], population: parsed_response["population"], language: languages, currency: currencies, symbol: currency_symbol)
    end 
end 

