class UserTest < ApplicationRecord
    belongs_to :test
    belongs_to :user
    has_many :answers, dependent: :destroy
end
