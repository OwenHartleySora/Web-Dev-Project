class User < ApplicationRecord
    has_secure_password

    #Attributes:
    #validates :Username, presence: true
    #validates :password_digest, presence: true #, length: { minimum: 10 }  Limit password length??
end
