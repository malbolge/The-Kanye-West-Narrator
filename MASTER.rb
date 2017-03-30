counter = 0
require 'net/http'
uri = URI('http://ineedaprompt.com?api&prompt[]=adverb1&prompt[]=verb1')
output = File.new("/Users/MacbookPro/story/story.rb", "a")
while counter < 20000
cat = Net::HTTP.get(uri)
output.puts("Kanye West "+cat.downcase)
counter += 1
puts counter
end
output.close
puts "Done"

moose = File.foreach('/Users/MacbookPro/story/story.rb').first

require "Twitter"
client = Twitter::REST::Client.new do |config|
    config.consumer_key        = ""
    config.consumer_secret     = ""
    config.access_token        = ""
    config.access_token_secret = ""
end

counter = 0
while counter < 14000000
    moose = File.foreach('/Users/MacbookPro/story/story.rb').random
    client.update(moose)
    sleep rand(602..908)
End
