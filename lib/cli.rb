class CLI
  def call
puts ""    
puts ""
puts ""
puts <<-'EOF'
~~~~~~~~~~~~~~~~~~~~~~~~ * C A T  B R E E D S * ~~~~~~~~~~~~~~~~~~~~~~~~~



                      /^--^\     /^--^\     /^--^\
                      \____/     \____/     \____/
                     /      \   /      \   /      \
                    |        | |        | |        |
                     \__  __/   \__  __/   \__  __/
|^|^|^|^|^|^|^|^|^|^|^|^\ \^|^|^|^/ /^|^|^|^|^\ \^|^|^|^|^|^|^|^|^|^|^|^|
| | | | | | | | | | | | |\ \| | |/ /| | | | | | \ \ | | | | | | | | | | |
#########################/ /######\ \###########/ /#######################
|| | | | | | | | | | | | \/| | | | \/| | | | | |\/ | | | | | | | | | | | |
|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_||
EOF
     puts ""
     puts ""
     puts "Welcome User!"
     sleep(0.5)
     puts ""
     puts "To navigate cat breeds, enter 'cats'"
     sleep(0.5)
     puts ""
     puts "To exit, enter 'exit'"
     puts ""
     API.get_data
     #binding.pry
     menu
     
    end

  def menu 
    input = gets.strip.downcase
   
     if input == "cats"
     breeds_list
     continue
     elsif input == "exit"
     bye_bye
     else 
     not_an_option
     menu
     end
   end

  def continue 
    puts ""
    puts "Would you like to continue (y/n)"
    second_input = gets.strip.downcase
    if second_input == "y"
      breeds_list
      continue
    elsif second_input == "n"
      bye_bye
    else
      error
    end
  end

 def breeds_list
   CatBreeds.all.each_with_index do |breed, index|
       puts "#{index +1}. #{breed.name}"
   end
   puts ""
   puts ""
   puts "Which cat breed are you interested in?"
   input = gets.strip.downcase
   breeds_selection(input)
  
   end

   #binding.pry

   end

  def breeds_selection(breed)
  
    c = CatBreeds.find_by_name(breed)
    c.each do |c|
    puts "Name: #{c.name}"
    sleep(1)
    puts "Origin: #{c.origin}"
    sleep(1) 
    puts "Temperament #{c.temperament}"
    sleep(1)
    puts "Description: #{c.description}"
    sleep(1)
    puts "Life Span: #{c.life_span}"
    sleep(1)
    puts "Affection Level: #{c.affection_level}"
    sleep(1)
    puts "Shedding Level: #{c.shedding_level}"
    sleep(1)
    puts "Intelligence: #{c.intelligence}"
    sleep(1)

    end

    #binding.pry
  end

   def not_an_option
    puts "Oops, that's not an option! Please try again."
    menu
   end

   def error
    puts "Oops, that's not an option! Please try again."
    sleep(1)
    continue
   end


def bye_bye
puts ""
puts "Goodbye, hope to see you back soon! "
puts ""
puts <<-'EOF'        
                        /)
               /\___/\ ((
               \`@_@'/  ))
               {_:Y:.}_//
    ----------{_}^-'{_}----------
EOF
puts ""
exit 
  end



    
  



