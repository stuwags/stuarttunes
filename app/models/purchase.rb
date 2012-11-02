# == Schema Information
#
# Table name: purchases
#
#  id      :integer          not null, primary key
#  user_id :integer
#  song_id :integer
#  price   :decimal(, )
#

class Purchase < ActiveRecord::Base
  attr_accessible :song_id
  belongs_to :user
  belongs_to :song
end
