class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.belongs_to :goal, index: true, foreign_key: true
      t.string :status

      t.timestamps null: false
    end
  end
end
