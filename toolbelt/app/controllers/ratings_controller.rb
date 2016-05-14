class RatingsController < ApplicationController
  def create
    Rating.create(rater_id: params[:rater_id], ratee_id: params[:ratee_id], rating: params[:rating])
    user = User.find(params[:ratee_id])
    sum = user.ratings_received.inject(0) {|total, rating| total += rating.score}
    number_of_ratings = user.ratings_received.count
    new_rating = sum / number_of_ratings
    user.update(rating: new_rating)
  end
end
