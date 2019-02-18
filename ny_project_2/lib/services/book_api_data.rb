require 'json'
require 'dotenv'
require 'httparty'
require 'dotenv'
Dotenv.load('./ny_project_2/.env')
# this class will hold the nyapidata
class NYBookAPI
  include HTTParty
  base_uri 'https://api.nytimes.com/svc/books/v3'

  def retrieve_api(api_key)
   @json_data =  JSON.parse(self.class.get("/lists/current/hardcover-fiction.json?api-key=#{api_key}").body)
  end

  def retrieve_api_data
    @json_data['results']
  end

  def amount_of_books
    @json_data.length
  end

  def retrieve_book_details
    retrieve_api_data['books']
  end

  def retrieve_rank_data
    arr = []
    retrieve_book_details.each do |rank|
      arr << rank['rank']
    end
    arr
  end

  def retrieve_rank_last_week_data
    arr = []
    retrieve_book_details.each do |rank|
      arr << rank['rank_last_week']
    end
    arr
  end

  def retrieve_weeks_on_list_data
    arr = []
    retrieve_book_details.each do |weeks_on_list|
      arr << weeks_on_list['weeks_on_list']
    end
    arr
  end

  def retrieve_asterisk_data
    arr = []
    retrieve_book_details.each do |asterisk|
      arr << asterisk['asterisk']
    end
    arr
  end

  def retrieve_title_data
    arr = []
    retrieve_book_details.each do |book|
      arr << book['title']
    end
    arr
  end

  def retrieve_dagger_data
    arr = []
    retrieve_book_details.each do |dagger|
      arr << dagger['dagger']
    end
    arr
  end

  def retrieve_amazon_product_url_data
    arr = []
    retrieve_book_details.each do |amazon_product|
      arr << amazon_product['amazon_product_url']
    end
    arr
  end
end
