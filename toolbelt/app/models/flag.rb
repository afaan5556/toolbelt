class Flag < ActiveRecord::Base
  enum reason: ["Tool Damaged", "Late"]
  belongs_to :flagee, class_name: "User"
  belongs_to :flagger, class_name: "User"

  validates :flagee_id, :flagger_id, :reason, presence: true

end
