class Author < ActiveRecord::Base
  has_many :authorships
  has_many :gems, :through => :authorships
end
