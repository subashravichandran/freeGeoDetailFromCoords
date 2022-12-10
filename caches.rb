class Cache
  def initialize
    @cache = Hash.new
  end

  def cache(cache_key, cache_value=nil)
    return @cache[cache_key.to_sym] if @cache.keys.include?(cache_key.to_sym)
    unless cache_value.nil?
      p 'reset list_all-keys'
      @all_keys = nil
      @cache[cache_key.to_sym] = cache_value
    end
  end

  def list_all_keys
    # TODO To be reused for searching cache based on a key
    @all_keys ||= @cache.keys
  end

  def list_cache(identifier)
    case
    when !identifier.nil? && ['keys', 'k', 'key'].include?(identifier.downcase) then list_all_keys 
    else @cache
    end
  end

  alias_method :read_cache, :cache
  alias_method :write_cache, :cache
end
