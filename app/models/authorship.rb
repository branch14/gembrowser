class Authorship < ActiveRecord::Base

  belongs_to :author
  belongs_to :gemm

  def name
    "#{author.name} works on #{gemm.name}"
  end

end
