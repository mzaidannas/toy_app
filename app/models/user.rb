class User < ActiveRecord::Base
    has_many :microposts
    validates :name, length: { maximum: 50 }, presence: true
    validates :email, format: { with: /\A([a-z0-9_\.-]+\@[\da-z\.-]+\.[a-z\.]{2,6})\z/i, message: "enter valid email address" }, length: { maximum: 50 }, presence: true
end
