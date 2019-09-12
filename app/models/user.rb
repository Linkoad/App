# frozen_string_literal: true

class User < ApplicationRecord
  validates :name, :surname, :email, :password, presence: true
end
