class Cast < ActiveRecord::Base
  belongs_to :movie
  belongs_to :person

  ROLES = ['actor','director', 'writer'].sort
end
