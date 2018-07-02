require 'rest-client'
require 'json'
require 'uri'
require 'net/http'
require 'date'
require 'time'

class Api

  def initialize(url)
    @url = url
  end

  def get_body
    response = RestClient.get @url
    if response.code != 200
      fail("The response was #{response.code}")
    else
      response.body
    end
  end

  def get_comments(post_id)
    response = RestClient.get @url, {params: {postId: post_id}}
    if response.code != 200
      fail("The response was #{response.code}")
    else
      response.body
    end
  end

  def count_comments(comments)
    JSON.parse(comments).size.to_s
  end

  def to_jason(string)
    JSON.parse(string)
  end
end