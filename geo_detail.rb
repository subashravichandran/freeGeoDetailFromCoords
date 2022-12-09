require './requirements'

class GeoDetail
  def initialize(latitude, longitude)
    @cache     = {}
    @latitude  = latitude
    @longitude = longitude
    @cache_key = latitude.to_s + longitude.to_s
  end

  def get_city_name_from_lat_lng
    response = use_cache() || HttpRequest.new(url: REVERSE_GEOCODE_URL, _lat: @latitude, _lng: @longitude).get_response
    use_cache(@cache_key, response)
  end

  def use_cache(cache_key, cache_value=nil)
    return @cache[cache_key.to_sym] if @cache.keys.include?(cache_key.to_sym)
    @cache[cache_key.to_sym] = cache_value if cache_value.nil?
  end
end
