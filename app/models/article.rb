class Article < ApplicationRecord

    #Lazy programmer tool! Basically a cheat to write all the code from .../models/concerns/visible.rb
    include Visible

    #States that an Article can have limitless comments that are dependent on the article's existance or else they die
    has_many :comments, dependent: :destroy

    validates :title, presence: true
    validates :body, presence: true, length: { minimum: 10 }
end
