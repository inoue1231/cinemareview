class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweets do |t|
      t.string :message, null:false
      t.string :title, null:false
      t.string :cinematitle, null:false
      
      t.timestamps
    end
  end
end
