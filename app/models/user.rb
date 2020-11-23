class User < ApplicationRecord
    has_many :user_tests, dependent :destroy
end
