class Cache
  def initialize
    @cache = Hash.new
  end

  def cache(cache_key, cache_value=nil)
    return @cache[cache_key.to_sym] if @cache.keys.include?(cache_key.to_sym)
    unless cache_value.nil?
      @all_keys = nil
      @cache[cache_key.to_sym] = cache_value
    end
  end

  def list_all_keys
    @all_keys ||= @cache.keys
  end

  def list_cache(identifier)
    case
    when identifier.nil?                                then @cache
    when identifier == '*'                              then list_all_keys 
    when identifier.size > 1 && identifier.match?(/\*/) then @cache.keys.select{|key| key.to_s.include?(identifier.gsub(/\*/, ''))}
    else @cache[identifier.to_s.to_sym]
    end
  end

  alias_method :read_cache, :cache
  alias_method :write_cache, :cache
end
