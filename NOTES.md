I am currently tying to provide information for a country to the user once they have selected a number from the list of all 250 countries that I displayed to them.

I first tried to store that list in an instance variable array in the Country class when the create list API method is invoked, then try and match the number that the user entered to its corresponding index in the array, then passing that name to the print country method of the CLI class. But that did not end up going well. 

I think the better solution is to create a list class whose only purpose is to store a list of the countries in a class variable. Then I could access and match the data that way?


--------------------------------------------------------------------------------------------

I figured aut the above problem, but I need to figure out a way to abstract it. I also need to work on the loop user.

while @country != 'exit"
    if @country == 'list'

    end 
end 

if Country.list[0][input - 1] == Country.find_by_name(Country.list[0][input - 1])
 print_country_info()
end 

--------------------------------------------------------------------------------------------
Add exit to the menu 

Figure out the loop 

Add Feature that asks user to submit a new input if input isnt recognzed.