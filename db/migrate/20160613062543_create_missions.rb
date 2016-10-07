class CreateMissions < ActiveRecord::Migration
  def change
    create_table :missions do |t|
      t.string :name
      t.text :description
      t.integer :parent_id
      t.datetime :created_at
      t.datetime :update_at
      t.integer :lft
      t.integer :rgt
      t.integer :depth

      t.timestamps null: false
    end
  end
end
