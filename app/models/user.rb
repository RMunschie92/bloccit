class User < ApplicationRecord
  before_save { self.email = email.downcase if email.present? }
  before_save {
    if name
      name = self.name.split(' ')
      new_name = []
      name.each do |word|
        word.capitalize!
        new_name << word
      end
      new_name = new_name.join(' ')
      self.name = new_name
    end
  }

  validates :name,
            length: { minimum: 1, maximum: 100 },
            presence: true,
            uniqueness: { case_sensitive: false }

  validates :password, presence: true, length: { minimum: 6 }, if: "password_digest.nil?"
  validates :password, length: { minimum: 6 }, allow_blank: true

  validates :email,
            presence: true,
            uniqueness: { case_sensitive: false },
            length: { minimum: 3, maximum: 254 }

  has_secure_password

end
