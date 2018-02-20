class User < ApplicationRecord
  hash_many :playlists
  validates :name, :email, presence: true
  validates :email, uniqueness: true

end
