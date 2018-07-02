require_relative '../api/api'

And(/I make a get request to "([^"]*)"$/) do |url|
  @context = Api.new url
  body = @context.get_body
  puts body
end

And(/I make a request to "([^"]*)" with "([^"]*)" as postId$/) do |url, post_id|
  @context = Api.new url
  @response = @context.get_comments(post_id)
end

Then(/I should see "([^"]*)" as the comments count$/) do |count|
  @context.count_comments(@response).should eql count
end

Then(/response should contain "([^"]*)" as "([^"]*)"$/) do |data,id|
  count = 0
  json = @context.to_jason(@response)
  json.each do |comment|
    if comment[id].to_s == data
      puts "#{data} is included in #{id}"
      count +=1
    end
  end
  raise("#{id} with data #{data} wasn't found.") unless count == 1
end

Then(/response should contain the string "([^"]*)" as "([^"]*)"$/) do |data,id|
  count = 0
  json = @context.to_jason(@response)
  json.each do |comment|
    if (comment[id].gsub /[\n]/, ' ') == (data.gsub /(\\n)/, ' ')
      puts "#{data} is included in #{id}"
      count +=1
    end
  end
  raise("#{id} with data #{data} wasn't found.") unless count == 1
end


