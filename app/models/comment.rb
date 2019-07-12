class Comment < ApplicationRecord
  belongs_to :blog

  validates :name, presence: true
  validates :content, presence: true
end
