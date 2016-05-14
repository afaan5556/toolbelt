class FlagsController < ApplicationController
  def create
    Flag.create(flagger_id: params[:flagger_id], flagee_id: params[:flagee_id], reason: params[:reason])
  end
end
