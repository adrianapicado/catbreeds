require_relative './cat_breeds.rb'

class API
    def self.get_data
        response = RestClient.get("https://api.thecatapi.com/v1/breeds")
        breeds = JSON.parse(response.body)
       # binding.pry
        #Dotenv.parse(".env.local", ".env")
        breeds.each do |breed|
         #binding.pry
        CatBreeds.new(breed)
        end
    end
  end

