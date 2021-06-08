require 'http'

class Reader
  def initialize(url)
    @url = url
    @response = []
  end

  def get_data
    @response = HTTP.get(@url).parse
  end
end
