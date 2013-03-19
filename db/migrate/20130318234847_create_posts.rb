class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :body
      t.string :video
      t.string :type

      t.timestamps
    end
  end
end
