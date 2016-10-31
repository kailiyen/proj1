# Q0: Why is this error being thrown?
There is no Pokemon model. 

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
In home_controller#index, all Pokemon who do not have a trainer (this is the common factor) are queried and then a random sample is chosen to be displayed.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
It creates a button that says "Throw a Pokeball!" that upon pressing the button, the app will route to PATCH /capture/:id. In routes, we defined this route to call the capture method in the pokemons controller, so pressing the button will call the capture method where the id of the pokemon to be captured is saved in params. 

# Question 3: What would you name your own Pokemon?
NhiChu

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed in a path trainer_path, which needed a trainer id, in this case, the current trainer id. 

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
application.html.erb renders the flash messages "consolidated" by layouts/messages. Calling full_messages returns all the messages in full in an array and to_sentence generates all the errors into one sentence.

# Give us feedback on the project and decal below!
It's going great! This project was fun!

# Extra credit: Link your Heroku deployed app
