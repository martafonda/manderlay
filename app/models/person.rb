class Person < ActiveRecord::Base
	has_many :movies, through: :casts
	has_many :casts, :dependent => :destroy
	validates :name, uniqueness: { scope: :surname}

	def complete_name
		"#{self.name} #{self.surname}"
	end
end
