class CLI
       def call
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
          puts "Welcome User!"
          puts ""
          puts "To navigate cat breeds, enter 'cats'"
          puts ""
          puts "To exit, enter 'exit'"
          API.get_data
          #binding.pry
          menu
          
         end

      def menu 
      input = gets.strip.downcase
    
        if input == "cats"
         breeds_list
         menu
         elsif input == "exit"
         bye_bye
         else 
         not_an_option
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
    
       def breeds_selection(breed)
         #puts "#{breed}"
         c = CatBreeds.find_by_name(breed)
         c.each do |c|
         puts "Name: #{c.name}"
         puts "Origin: #{c.origin}"
         puts "Temperament #{c.temperament}"
         puts "Description: #{c.description}"
          puts "Life Span: #{c.life_span}"
          puts "Affection Level: #{c.affection_level}"
          puts "Shedding Level: #{c.shedding_level}"
          puts "Intelligence: #{c.intelligence}"
         end

         #binding.pry
        end
    
    
     def bye_bye
     puts "Goodbye, hope to see you back soon"
     end
    
     def not_an_option
         puts "Not an option, please try again"
         menu
        end
    
   end

