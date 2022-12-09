require './requirements'

class GeoDetail
  class << self
    def get_city_name_from_lat_lng(_lat, _lng)
     GeoInput.new(lat: _lat, lng: _lng).input_params
    end
  end
end
