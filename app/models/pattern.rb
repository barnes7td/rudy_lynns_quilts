class Pattern < ActiveRecord::Base
  attr_accessible :title, :description

  validates :title, presence: true
  validates :title, uniqueness: true
end
