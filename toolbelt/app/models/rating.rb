class Rating < ActiveRecord::Base
  belongs_to :ratee, class_name: "User"
  belongs_to :rater, class_name: "User"

  validates :ratee_id, :rater_id, :score, presence: true
  validates_uniqueness_of :ratee_id, scope: :rater_id, message: "You already reviewed this person"
end
