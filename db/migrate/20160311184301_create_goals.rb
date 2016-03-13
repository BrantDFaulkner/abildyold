class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :title
      t.text :description
      t.string :status
      t.string :category
      t.belongs_to :leader

      t.timestamps null: false
    end
  end
end
