# == Schema Information
#
# Table name: songs
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  price      :decimal(, )
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  audiofile  :string(255)
#

class Song < ActiveRecord::Base
  attr_accessible :name, :price, :audiofile
  mount_uploader :audiofile, AudiofileUploader
  # has_and_belongs_to_many :artists
end
