class User < ApplicationRecord
    validates :name, :surname, :email, :password, presence: true
end
