class Gemm < ActiveRecord::Base
  has_many :authorships
  has_many :authors, :through => :authorships
  has_many :dependencies_as_depender, :foreign_key => "depender_id", :class_name => "Dependency"
  has_many :dependencies_as_dependee, :foreign_key => "dependee_id", :class_name => "Dependency"
  has_many :dependers, :through => :dependencies_as_dependee
  has_many :dependees, :through => :dependencies_as_depender
end
