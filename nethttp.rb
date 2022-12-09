require 'uri'
require 'json'
require 'net/http'

class HttpRequest
  def initialize(url:)
    @uri = URI.parse(url)
  end

  def get_response
    response = Net::HTTP.get(@uri)
    JSON.parse(response)
  end
end
