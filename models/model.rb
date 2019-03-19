require 'net/http'
require 'json'
require 'paralleldots'
require 'pp'

def get_gif(mood)
    url = "http://api.giphy.com/v1/gifs/random?tag=" + @user_feeling + "&api_key=" + ENV['key'] + "&limit=1"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    result = JSON.parse(response)
    result["data"]["embed_url"]
end

# @text= "I failed the test"
# response=emotion(@text, lang_code= "en")
# @user_feeling = response["emotion"]["emotion"]


# puts get_gif("happy")
