class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      t.text                 :text
      t.timestamps           null:true
      t.integer              :user_id
    end
  end
end
