# Copyright (c) Universidade Federal Fluminense (UFF).
# This file is part of SAPOS. Please, consult the license terms in the LICENSE file.

class Country < ActiveRecord::Base
  has_many :state, :dependent => :restrict_with_exception
  has_paper_trail
  
  validates :name, :presence => true, :uniqueness => true

  def to_label
  	"#{self.name}"
  end

end
