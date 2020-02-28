class Song < ApplicationRecord
    
    belongs_to :artist
    belongs_to :genre

    validates :name, presence: true
    validates :artist_id, presence: true
    validates :genre_id, presence: true
    def self.filter_songs_by_name(term)
        self.all.select{|song| song.name.downcase.include?(term.downcase)}
    end
end


