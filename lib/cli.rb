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
      continue
    end
  end

 def breeds_list
   names = []
   CatBreeds.all.each_with_index do |breed, index|
       puts "#{index +1}. #{breed.name}"
       names << breed.name.downcase
   end
   puts ""
   puts ""
   puts "Please enter the name of the cat breed you interested in"
   input = gets.strip.downcase
   if names.include?(input)
     breeds_selection(input)
   else 
    puts "Please check you spelling & try again"
    sleep(1)
    breeds_list
   end
  end

   #binding.pry

   end

  def breeds_selection(breed)
  
    cb = CatBreeds.find_by_name(breed)
    #cb.each do |cb|                    
    puts "Name: #{cb.name}"
    sleep(1)
    puts ""
    puts "Origin: #{cb.origin}"
    sleep(1) 
    puts ""
    puts "Temperament #{cb.temperament}"
    sleep(1)
    puts ""
    puts "Description: #{cb.description}"
    sleep(1)
    puts ""
    puts "Life Span: #{cb.life_span}"
    sleep(1)
    puts ""
    puts "Affection Level: #{cb.affection_level}"
    sleep(1)
    puts ""
    puts "Shedding Level: #{cb.shedding_level}"
    sleep(1)
    puts ""
    puts "Intelligence: #{cb.intelligence}"
    sleep(1)

  end

    #binding.pry
  

   def not_an_option 
    puts "Oops, that's not an option! Please try again."
    menu
   end

   def error 
    puts "Oops, that's not an option!"
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



    
  



