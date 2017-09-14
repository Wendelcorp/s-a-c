class Campaign < ApplicationRecord
  has_many :pledges
  accepts_nested_attributes_for :pledges, reject_if: :all_blank, allow_destroy: true

  belongs_to :user
end
