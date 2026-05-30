class Task < ApplicationRecord
    belongs_to :user
    validates :title, :description, :status, presence: true
end
