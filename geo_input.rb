class GeoInput
    attr_accessor :input_params

    def initialize(lat: , lng:)
      self.input_params = [lat, lng]
    end
end
