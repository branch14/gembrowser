class Dependency < ActiveRecord::Base
  belongs_to :depender, :foreign_key => :depender_id, :class_name => "Gem"
  belongs_to :dependee, :foreign_key => :dependee_id, :class_name => "Gem"
end
