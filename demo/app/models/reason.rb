class Reason < ApplicationRecord
  has_many :points

  scope :with_points, ->(include) { includes(:points) if include.present? && include.to_bool }
  
end
