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





Today I will be working on the loop for my CLI app. I've already build out most of the functionalities fo the app, I was not aware that we had to make a 30 min video of us coding our project. So my apologies for that. 

Like I said I;ll be working on the loop that will add interactivity to my app. I'm currenty just calling different methods to make it seem like its a loop, but that I need to a better way to abstract that. So I think I loop will be perfect. 

So let me run my app right now to show you guys what I have so far. I hope you guys can see my terminal screen to the right >

As you can see, the core functionalities are working, but the user is recieving the same prompt as when they first started the app. That what I will be working on today. I'm going to keep this video at around 30 minutes so lets hope I can get it done by then.....haha 

If theres nothing happening, it just means im trying to think it through. Right now I am trying to figure out a way to insert my prompt method into my run method. 

Also, I did not know that we had to do 30 commits thought the project. Just found out yesterday, So I will be doing a lot of unecessary commits to github.... oops. 

--------------------------------------------------------------------------------------------
#Post Assesment Refactoring 

# remove the COUNTRIES_LIST class constant from the Country class, and instead just use `@@all`
    # some items to consider:
    # - when you initially get the list country names, instantiate the countries
    # - ...which means when you get the details for a country, you'll need to find it in the @@all array and update it
    # - you could build a class method in your Country class that returns an array of just the country names
    # Do you best to keep SRP & SOC in mind - Single Responsibility Principle & Separation of Concerns - each method should have one job, each class should be concerned with one main thing