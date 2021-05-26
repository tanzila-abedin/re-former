class User < ApplicationRecord
      validates :username, presence: { message: 'must be given please' },
      validates :email, presence: { message: 'must be given please' },
      validates :password, presence: { message: 'must be given please' },
end
