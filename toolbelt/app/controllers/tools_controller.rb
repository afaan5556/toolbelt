class ToolsController < ApplicationController
  def index

      # test = {"string" => "hello", "guess" => 3}
      # render json: test
  end

  def create
    puts params
    Tool.create(user_id: params[:user_id], title: params[:title], description: params[:description])
    tools = Tool.all
    render json: tools
  end

end
