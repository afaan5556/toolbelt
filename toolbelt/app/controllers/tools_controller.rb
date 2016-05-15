
class ToolsController < ApplicationController
  def index
    user = User.find(params[:user_id])
    tools = user.tools
    render json: tools
  end

  def create
    puts params
    Tool.create(user_id: params[:user_id], title: params[:title], description: params[:description])
    tools = Tool.all
    render json: tools
  end



    def search
      current_location = current_location(params)
      possible_tools = []
      close_owners = find_close_owners(current_location, User.all, 20)
      close_owners.each {|user| possible_tools += check_tool_by_keyword(user, params[:keyword]) }
      search_results = convert_to_json(possible_tools, current_location)
      render json: search_results
    end

    def current_location(params)
      Geokit::Geocoders::GoogleGeocoder.geocode "#{params[:latitude]}, #{params[:longitude]}"
    end

    def full_address(user)
      if user.street_address_2 != nil
        "#{user.street_address_1}, #{user.street_address_2}, #{user.city}, #{user.state}, #{user.zip}"
      else
        "#{user.street_address_1}, #{user.city}, #{user.state}, #{user.zip}"
      end
    end

    def get_geo(user)
      Geokit::Geocoders::GoogleGeocoder.geocode full_address(user)
    end

    def find_close_owners(current_location, owner_array, miles)
      owner_array.select do |owner|
        owner_location = get_geo(owner)
        owner_location.distance_to(current_location) < miles
      end
    end

    def check_tool_by_keyword(user, keyword)
      user.tools.select {|tool| tool.title.include?(keyword) }
    end

    def convert_to_json(array_of_tools, current_location)
      array_of_tools.map do |tool|
        { tool: tool, owner: tool.user, distance:get_geo(tool.user).distance_to(current_location)  }
      end
    end









end
