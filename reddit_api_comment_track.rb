require "rest_client"
require "json"

response = RestClient.get 'http://www.reddit.com/user/awildsketchappeared/comments/.json'


data = JSON.parse(response.body)

#puts data

data['data']['children'].each do |child|
    puts child['data']['body']
end
