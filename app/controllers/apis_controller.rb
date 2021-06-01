class ApisController < ApplicationController

  def street_to_coords_input
    render({:template => "/apis/street_to_coords_input.html.erb"})
  end
  
  def street_to_coords_results
      # Getting the user content
      @user_input_address = params.fetch("user_street_address")

      # Retrieving the GMAPS API Key from environment variables stored in Gitpod
      gmaps_key = ENV.fetch("GMAPS_KEY")

      # Putting it all together
      maps_url = "https://maps.googleapis.com/maps/api/geocode/json?address="+@user_input_address+"&key="+gmaps_key

      # Accessing the file in string format and reading it
      file = open(maps_url)
      contents = file.read

      # Converting to JSON format
      parsed_contents = JSON.parse(contents)

      # Retrieving Lat and Long
      @lat = parsed_contents.fetch("results").at(0).fetch("geometry").fetch("location").fetch("lat")
      @long = parsed_contents.fetch("results").at(0).fetch("geometry").fetch("location").fetch("lng")

      render({:template => "/apis/street_to_coords_results.html.erb"})
    end

  def text_translate
    render({:template => "/apis/text_translator_input.html.erb"})
  end

  def text_translate_results
    @body = params.fetch("body")
    render({:template => "/apis/text_translator_resuls.html.erb"})
  end

end