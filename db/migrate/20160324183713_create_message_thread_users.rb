class CreateMessageThreadUsers < ActiveRecord::Migration
  def change
    create_table :message_thread_users do |t|
      t.belongs_to :message_thread, index: true, foreign_key: true
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
