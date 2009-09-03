class Dependency < ActiveRecord::Base

  belongs_to :depender, :foreign_key => :depender_id, :class_name => "Gemm"
  belongs_to :dependee, :foreign_key => :dependee_id, :class_name => "Gemm"

  def name
    "#{dependee.name} depends on #{depender.name}"
  end

end
