# frozen_string_literal: true

class Comment < ApplicationRecord
  belongs_to :posts

  validates :user_name, :title, :body, presence: true
end
