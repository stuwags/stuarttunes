# == Schema Information
#
# Table name: artists
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  dob        :date
#  photo      :string(255)
#  bio        :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Artist < ActiveRecord::Base
  attr_accessible :bio, :dob, :name, :photo
  has_and_belongs_to_many :songs
  mount_uploader :photo, AudiofileUploader
end
