class User < ApplicationRecord
    has_many :tasks, dependent: :destroy
    validates :user_name, :email, :password, presence: true
end
