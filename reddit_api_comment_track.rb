require "rest_client"
require "json"

uname = 'awildsketchappeared' 

response = RestClient.get 'http://www.reddit.com/user/'+ uname +'/comments/.json'


data = JSON.parse(response.body)

#puts data

data['data']['children'].each do |child|
    puts child['data']['body']
end
