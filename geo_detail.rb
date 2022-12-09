require './requirements'

class GeoDetail
  class << self
    def get_city_name_from_lat_lng
      response = HttpRequest.new(url: REVERSE_GEOCODE_URL).get_response
      response
    end
  end
end
