class Cast < ActiveRecord::Base
  belongs_to :movie
  belongs_to :person
  ROLES = ['actor','director', 'writer', 'producer'].sort
  validates :role, :inclusion => { :in => ROLES, allow_nil: true}
  validates :movie_id, uniqueness: { scope: [:person_id,:role]}
end
