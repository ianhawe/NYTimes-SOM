require_relative 'services/book_api_data'
# This is the super class which runs the NYAPIData class.
class NYTimes
  def book_api
    NYBookAPI.new
  end
end
