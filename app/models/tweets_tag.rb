class TweetsTag

  include ActiveModel::Model
  attr_accessor :message, :name, :title,  :cinematitle, :image
  

  
  with_options presence: true do
    validates :message
    validates :name
    validates :title
    validates :cinematitle

  end

  def save
  
    tweet = Tweet.create(message: message, title: title, cinematitle: cinematitle, image: image)
   
    
    tag = Tag.create(name: name)
    tag = Tag.where(name: name).first_or_initialize
    tag.save


    TweetTagRelation.create(tweet_id: tweet.id, tag_id: tag.id)
  end

end