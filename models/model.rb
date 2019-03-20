require 'net/http'
require 'json'
require 'paralleldots'
require 'pp'

def get_gif()
    url = "http://api.giphy.com/v1/gifs/random?tag=" + get_mood() + "&api_key=rzuGbBtNPd8X0vnCyTPxrqRnFsnL25eA&limit=1"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    result = JSON.parse(response)
    result["data"]["embed_url"]
end

def get_mood()
@text= params[:feelings]
response=emotion(@text, lang_code= "en")
response["emotion"]["emotion"]
end

# puts get_mood()

# puts get_gif("happy")
