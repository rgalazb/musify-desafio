class Song < ApplicationRecord
  belongs_to :playlist
  validates :name, :artist, presence: true
end
