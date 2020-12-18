class API
    def self.get_data
        response = RestClient.get("https://api.thecatapi.com/v1/breeds")
        breeds = JSON.parse(response.body) #turned string into arrays 
        breeds.each do |breed|
         #binding.pry
        CatBreeds.new(breed) #instanciates new cat breed from each array. 
        end
    end
  end

