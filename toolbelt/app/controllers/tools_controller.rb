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
    current_location = {lat: params[:latitude], long: params[:longitude]}
    possible_tools = []
    close_users = find_users_within_distance(current_location[:lat], current_location[:long], 15)
    close_users.each {|user| possible_tools += check_tool_by_keyword(user, params[:keyword]) }
    search_results = convert_to_json(possible_tools, current_location[:lat], current_location[:long])
    render json: search_results
  end

  private

    def find_distance(current_lat, current_long, there)
      Math.sqrt((current_lat-there.latitude)**2+(current_long-there.longitude)**2)
    end

    def convert_to_coordinate_distance(miles)
      miles * 0.01077
    end

    def find_users_within_distance(lat, long, miles)
      coor_dist = convert_to_coordinate_distance(miles)
      User.all.select {|user| find_distance(lat, long, user) < coor_dist }
    end

    def check_tool_by_keyword(user, keyword)
      user.tools.select {|tool| tool.title.include?(keyword) }
    end

    def convert_to_json(array_of_tools, lat, long)
      array_of_tools.map {|tool| {tool: tool, owner: tool.user, distance: find_distance(lat, long, tool.user)  } }
    end

end
