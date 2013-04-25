class CreateBoardInfos < ActiveRecord::Migration
  def change
    create_table :board_infos do |t|
      t.references :user
      t.string :title
      t.string :board
      t.string :photo
      t.text :description

      t.timestamps
    end
  end
end
