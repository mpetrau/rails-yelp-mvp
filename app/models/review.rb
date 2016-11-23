class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, :inclusion  => { :in => 0..5, allow_nil: false }
  validates :restaurant_id, :content, presence: true

  validates_numericality_of :rating, :only_integer => true, :allow_nil => false,
   :message => "can only be whole number."

end
