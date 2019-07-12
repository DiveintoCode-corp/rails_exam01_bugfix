class Blog < ApplicationRecord
  # ErrorCause: undefined method `comments' for Blog, association typo
  # FixReason: fix typo, has_many :comment to :comments
  # ErrorCause: FOREIGN KEY constraint failed, when destroy blog with comments
  # FixReason: add dependent: :destroy to association
  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :content, presence: true
end
