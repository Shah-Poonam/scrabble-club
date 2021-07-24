# frozen_string_literal: true

# Agency model
class Member < ApplicationRecord
  has_many :participants, dependent: :destroy
  validates :first_name, :last_name, :email, :phone_number , presence: true

  def full_name
    [first_name, last_name].reject(&:blank?).compact.join(" ")
  end
end
