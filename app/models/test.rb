class Test < ApplicationRecord
    has_many :questions, dependent :destroy
    has_many :user_tests, dependent :destroy
end
