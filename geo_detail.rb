require './requirements'

class GeoDetail
  @cache_mem = Cache.new()
  class << self
    def reverse_geocode(latitude, longitude)
      cached_response = @cache_mem.read_cache(latitude.to_s + longitude.to_s)
      if cached_response.nil?
        response = HttpRequest.new(url: REVERSE_GEOCODE_URL_SAMPLE, _lat: latitude, _lng: longitude).get_response
        @cache_mem.write_cache(latitude.to_s + longitude.to_s, response)
        return response
      end
      return cached_response
    end

    def list_cache(identifier=nil)
      @cache_mem.list_cache(identifier) 
    end
  end
end
