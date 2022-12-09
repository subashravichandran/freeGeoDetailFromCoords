require 'uri'
require 'json'
require 'net/http'

class HttpRequest
  def initialize(url: , _lat: , _lng:)
    @uri  = URI.parse(url)
    @_lat = _lat
    @_lng = _lng
  end

  def get_response
    @uri.query = URI.encode_www_form(necessary_params)
    response = Net::HTTP.get(@uri)
    JSON.parse(response)
  end

  def necessary_params
    {
      LATITUDE.to_sym => @_lat,
      LONGITUDE.to_sym => @_lng,
      LANG.to_sym => 'en',
      TOKEN.to_sym => 'dc_92b3d83c21844674b1b5edb3969119f'
    }
  end
end
