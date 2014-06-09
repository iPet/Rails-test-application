class Room < ActiveRecord::Base
  has_many :furniture
  belongs_to :house
end
