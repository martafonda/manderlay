class Movie < ActiveRecord::Base
	has_many :comments, :dependent => :destroy
	has_many :people, through: :casts
	has_many :casts
end
