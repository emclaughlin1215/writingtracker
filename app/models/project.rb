class Project < ApplicationRecord
  has_many :daily_counts, dependent: :destroy
  validates :title, presence:true, length: { minimum: 5 }
end
