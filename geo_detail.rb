require './requirements'

class GeoDetail
  class << self
    def get_city_name_from_lat_lng()
      HttpRequest.new(url: REVERSE_GEOCODE_URL_SAMPLE).get_response
    end
  end
end
