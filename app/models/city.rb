# frozen_string_literal: true

class City < ApplicationRecord
  belongs_to :prefecture
  has_many :assessable_areas, dependent: :restrict_with_error
  has_many :branches, dependent: :restrict_with_error

  validates :name, presence: true
end
