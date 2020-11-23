class Question < ApplicationRecord
    belongs_to :test
    has_many :user_tests, dependent: :destroy
end
