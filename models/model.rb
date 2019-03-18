require 'net/http'
require 'json'
require 'pp'

def get_gif(mood)
    url = "http://api.giphy.com/v1/gifs/random?tag=" + @user_feeling + "&api_key=" + ENV['key'] + "&limit=1"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    result = JSON.parse(response)
    result["data"]["embed_url"]
end
# def get_antonym(mood)
    # url = "https://www.dictionaryapi.com/api/v3/references/thesaurus/json/happy?key=0c1c42b3-ad1e-46ba-ace6-6e297eb7df07"
    # uri = URI(url)
    # response = Net::HTTP.get(uri)
    # result = JSON.parse(response)
    # puts result
# end
#IGNORE THIS ^ I WAS TRYING TO USE A SECOND API TO GET AN ANTONYM OF THE USERS INPUT
# puts get_gif("happy")
