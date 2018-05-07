class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    # when this method is called it should assign the song's artist to Drake
    if Artist.find_by_name("Drake") == nil 
      drake = Artist.create(name: "Drake")
      self.artist = drake
    else
      self.artist = Artist.find_by_name("Drake")
    end
  end
end