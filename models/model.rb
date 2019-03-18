require 'net/http'
require 'json'

def get_gif(mood)
    url = "http://api.giphy.com/v1/gifs/random?api_key=rzuGbBtNPd8X0vnCyTPxrqRnFsnL25eA&limit=1"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    result = JSON.parse(response)
    result["data"]["embed_url"]
end

# puts get_gif("happy")
