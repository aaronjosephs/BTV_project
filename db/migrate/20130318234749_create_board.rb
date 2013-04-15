class Create < ActiveRecord::Migration
  def change
    create_table :board do |t|
      t.string :type #Type of Board eg. Executive, Production
      t.string :id
      t.string :title
      t.timestamps
    end
  end
end