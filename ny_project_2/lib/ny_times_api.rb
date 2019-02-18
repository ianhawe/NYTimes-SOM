require_relative 'services/book_api_data'
# This is the super class which runs the all service classes, currently this runs the book service provided by NY Times.
class NYTimes
  def book_api
    NYBookAPI.new
  end
end
