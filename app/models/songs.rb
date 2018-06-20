class Songs < ApplicationRecord
  def self.find_c_chord
    where(chord: 'C')
  end
  def self.find_the_beatles
    where(band: 'The beatles')
  end
  def self.find_rock
    where("genre LIKE '%rock%'")
  end
end
