class User < ActiveRecord::Base
  has_secure_password

  has_many :ratings_received, class_name: "Rating", foreign_key: "ratee_id"
  has_many :ratings_given, class_name: "Rating", foreign_key: "rater_id"
  has_many :raters, through: :ratings_received, source: :rater
  has_many :ratees, through: :ratings_given, source: :ratee

  has_many :flags_received, class_name: "Flag", foreign_key: "flagee_id"
  has_many :flags_given, class_name: "Flag", foreign_key: "flagger_id"
  has_many :flaggers, through: :flags_received, source: :flagger
  has_many :flagees, through: :flags_given, source: :flagee

  has_many :tools

  validates :first_name, :last_name, :email, :street_address_1, :city, :state, :zip, :password, :latitude, :longitude, presence: true
  validates :state, length: {maximum: 2}
  validates :email, uniqueness: true
end
