class Author < ActiveRecord::Base
  has_many :authorships
  has_many :gemms, :through => :authorships
end
