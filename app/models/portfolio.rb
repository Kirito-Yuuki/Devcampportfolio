class Portfolio < ApplicationRecord
  has_many :technologies

  validates_presence_of :title, :body
  
  def self.angular
    where(subtitle: 'Angular')
  end
  
end
