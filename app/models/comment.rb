class Comment < ApplicationRecord
  
  #Lazy programmer tool! Basically a cheat to write all the code from .../models/concerns/visible.rb
  include Visible
  
  belongs_to :article
  
  validates :commenter, presence: true
  validates :body, presence: true
end