class Statement < ApplicationRecord
  belongs_to :category
  belongs_to :user

  def self.total
    Statement.sum(:value)
  end
end
