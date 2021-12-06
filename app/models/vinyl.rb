class Vinyl < ApplicationRecord
  after_initialize :set_default_values
  validates :artist, presence: true
  validates :alphabet_artist, presence: true
  validates :album, presence: true

  has_many      :songs, dependent: :destroy
  accepts_nested_attributes_for :songs, allow_destroy: true

  private

  def set_default_values
    self.size               ||= 12
    self.compilation        ||= false
  end
end
