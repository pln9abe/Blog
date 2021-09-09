class Blog < ApplicationRecord
  has_many :comments, as: :commentable, dependent: :destroy
  belongs_to :user

  validates :title, presence: true
  validates :body, presence: true
end
