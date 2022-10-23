class CreateTweets < ActiveRecord::Migration[7.0]
  def change
    create_table :tweets do |t|
      t.references :monster, null: false, foreign_key: true
      t.text :content
      t.boolean :private
      t.date :birthdate
      t.timestamps
    end
  end
end
