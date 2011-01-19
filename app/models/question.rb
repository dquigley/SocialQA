class Question < ActiveRecord::Base
  # Define Order
  default_scope :order => 'category'
  
  # Validation
  validates :category, :question, :qformat, :canswer,  :presence => true
  validates :question, :uniqueness => true
  validates :canswer, :numericality => {:greater_than_or_equal_to => 1}
  has_many :answers, :dependent => :destroy
  
end
