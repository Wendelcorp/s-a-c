class Campaign < ApplicationRecord
  has_many :pledges
  belongs_to :user
  accepts_nested_attributes_for :pledges, reject_if: :all_blank, allow_destroy: true
end
