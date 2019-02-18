# NY-API-SOM (Source: https://developer.nytimes.com/)

## Description
This is a SOM created for NY times API. What this does is model out book-related data provided by NY Times. The purpose of this is to provide a scalable and maintainable piece of software which can be used throughout the course of the service's duration.

### Languages and Tools used
* Ruby
* RSpec
* Service Object Model

### How to download
1. If you choose to clone it go into your terminal (on MAC or download one for windows).
2. Create a directory.
3. Type git clone followed by the link obtained via opening 'clone or download'.
```git clone https://github.com/ianhawe/NYTimes-SOM.git```
4. This will make copy to the directory you're in.
5. Go to that directory.
6. Open up the folder in your choice of IDE or text editor.

### How to get an API Key
1. Visit https://developer.nytimes.com/
2. Sign in or Sign up, in the top right hand corner of the link above
3. Click on your signed in name in the top right hand corner
4. Click My Apps
5. At this point, either create an app or choose a previous app you've made
6. Copy your api key.
7. In the project you've downloaded create a '.gitignore' file
8. In the '.gitignore' file type in '.env'
9. Create a '.env' file
10. In the '.env' file type 'api_key=' followed by your api key
``` api_key=123KJLD!@DKUAD ```

### How to use
1. Open up the terminal in your chosen IDE
2. Type bundle install, all the gems and dependancies will be installed
3. If you want to run the tests which have been created type 'rspec' in the terminal in the 'ny_project_2 folder'

### Alternative use
The super class is  ```ny_times_api.rb``` if you instaniate it, all the objects are stored in an array. Make sure you call out either a specific index, or altenratively you can loop through each array and use the data any how you want. For example

``` 
@api_data = NYTimes.new.book_api
@api_data.retrieve_api(ENV['API_KEY'])
@api_data.retrieve_book_details.each do |book_details|
        expect(book_details).to be_kind_of(Object)
      end 
```