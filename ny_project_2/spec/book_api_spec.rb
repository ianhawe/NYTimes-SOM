require_relative 'spec_helper'

describe 'This will test the service books from the NY Times website. ' do
  before(:all) do
    @api_data = NYTimes.new.book_api
    @api_data.retrieve_api(ENV['API_KEY'])
  end
  context 'Testing all data types on the service: books, all this data should return an array, as they are stored in an array in the SOM' do
    it 'This test should check what class is being ran' do
      @api_data.retrieve_rank_data.each do |rank_data|
        expect(rank_data).to be_kind_of(Integer)
      end
    end 
    it 'This test should make book details return an Object' do
      @api_data.retrieve_book_details.each do |book_details|
        expect(book_details).to be_kind_of(Object)
      end
    end
    it 'This test should make rank data return an Integer' do
      @api_data.retrieve_rank_data.each do |count_rank_data|
        expect(count_rank_data).to be_kind_of(Integer)
      end
    end
    it "This test should make last week's rank return an Integer" do
      @api_data.retrieve_rank_last_week_data.each do |last_week_rank|
        expect(last_week_rank).to be_kind_of(Integer)
      end
    end
    it 'This test should make weeks on the list return an Integer' do
      @api_data.retrieve_weeks_on_list_data.each do|weeks_on_list|
        expect(weeks_on_list).to be_kind_of(Integer)
      end
    end
    it 'This test should make asterisk data return an Integer' do
      @api_data.retrieve_asterisk_data.each do|asterisk|
        expect(asterisk).to be_kind_of(Integer)
      end
    end
    it 'This test should make title data return an String' do
      @api_data.retrieve_title_data.each do |title|
        expect(title).to be_kind_of(String)
      end

    end
    it 'This test should make dagger data return an Integer' do
      @api_data.retrieve_dagger_data.each do |dagger|
        expect(dagger).to be_kind_of(Integer)
      end
    end
  end
end
