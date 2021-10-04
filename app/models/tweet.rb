class Tweet < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :tweet_tag_relations, dependent: :destroy
  has_many :tags, through: :tweet_tag_relations, dependent: :destroy
  has_one_attached :image, dependent: :destroy
  belongs_to :user, optional: true, dependent: :destroy
  
end
