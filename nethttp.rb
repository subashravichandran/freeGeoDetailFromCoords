require 'uri'
require 'net/http'

class HttpRequest
  def initialize(url:)
    @uri = URI.parse(url)
  end

  def get_response
    return Net::HTTP.get(@uri)
  end
end
