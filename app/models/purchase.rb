class Purchase < ActiveRecord::Base
  attr_accessible :song_id
  belongs_to :user
  belongs_to :song
end