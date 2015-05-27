require "rest_client"
require "json"
require "./frequency_method"
response = RestClient.get 'http://www.reddit.com/user/awildsketchappeared/comments/.json'

data = JSON.parse(response.body)

subredarray = Array.new
subredarray = []

data['data']['children'].each do |child|

   subredarray.push(child['data']['subreddit_id'])

 
end

frequency_method(subredarray)
