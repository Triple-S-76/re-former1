class Password < ApplicationRecord
  has_secure_password

  validates :name, presence: true
  validates :password_digest, presence: true
end
