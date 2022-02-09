class Article < ApplicationRecord
    include Visible

    has_many :comments, dependent: :destroy

    validates :title, presence: true
    validates :body, presence: true, length: { minimum: 10 }
    #validates :video_id, presence: false
    validates :thumbnail, presence: true
    validates :debug, presence: true
end
