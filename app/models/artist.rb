class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    #return the genre of the artist's first saved song
    self.songs.all.take(1)[0].genre
  end

  def song_count
    #return the number of songs associated with the artist
    self.songs.all.length
  end

  def genre_count
    #return the number of genres associated with the artist

    self.songs.all.map do |song|
      song.genre
    end.length
  end
end
