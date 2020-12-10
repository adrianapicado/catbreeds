#require_relative './cat_breeds.rb'

class API
    def self.get_data
        response = RestClient.get("https://api.thecatapi.com/v1/breeds")
        breeds = JSON.parse(response.body)
        breeds.each do |breed|
         #binding.pry
        CatBreeds.new(breed)
        end
    end
  end

