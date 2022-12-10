class ConfigSetup
  CONSTANTS_PATH = './constants.rb'
  class << self
    def configure
      print "Do you want to use a new API key? (y/n): "
      reconfigure = gets.chomp
      if reconfigure.downcase == 'y'
        print "Enter a valid API-key:"
        auth_key_file_path = gets.chomp
        new_contents = File.read(CONSTANTS_PATH).gsub(/^AUTH_KEY.*$/, "AUTH_KEY = '#{auth_key_file_path}'")
        File.open(CONSTANTS_PATH, 'w'){|file| file.puts new_contents; file.close}
      else
        puts "Using existing API key in #{CONSTANTS_PATH}"
      end
      require './constants'
    end
  end
end
