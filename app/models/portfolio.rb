class Portfolio < ApplicationRecord
  has_many :technologies
  accepts_nested_attributes_for :technologies, 
                                reject_if: lamda { |attrs| attrs['name'].blank? }
  validates_presence_of :title, :body
  
  def self.angular
    where(subtitle: 'Angular')
  end
  
end
