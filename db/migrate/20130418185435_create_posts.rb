class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      
      t.timestamps #creates two more helpful cols in our db table:
                   #post created at, and updated at
    end
  end
end
