class Movie < ActiveRecord::Base
	has_many :comments, :dependent => :destroy
	has_many :people, through: :casts
	has_many :casts, :dependent => :destroy
	validates :title, uniqueness: { scope: [:duration, :synopsis, :year, :category]}
	validates_presence_of :title

	
	scope :bigger_than_duration, ->(duration) { where('duration > ?', duration)}
	scope :smaller_than_duration, ->(duration) { where('duration < ?', duration)}
	scope :bigger_than_year, ->(year) { where('year > ?', year)}
	scope :smaller_than_year, ->(year) { where('year < ?', year)}
end
